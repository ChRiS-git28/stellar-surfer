"""Compile the Stellar Surfer Java visual layer (mod/src/main/java) without Gradle, against an installed NeoForge.
Usage: python build_mod.py <curseforge Install dir> <apoli jar> <out classes dir> [other mod jars to compile against...]
- the vanilla client jar is remapped once to Mojang names (NeoForge's AutoRenamingTool + the official mappings) into a local
  cache next to the Install dir: Mojang's mappings must not be redistributed, so nothing remapped goes into this repo.
- the classpath is read from the installed version json files (neoforge-<ver> + 1.21.1)."""
import glob, json, os, shutil, subprocess, sys

NEO = "21.1.265"
INSTALL, APOLI, OUT = sys.argv[1:4]
LIB = os.path.join(INSTALL, "libraries")
HERE = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(HERE, "..", "mod", "src", "main", "java")
JDK = os.environ.get("JAVA_HOME", r"C:\Program Files\Java\jdk-21")
JAVA, JAVAC = os.path.join(JDK, "bin", "java.exe"), os.path.join(JDK, "bin", "javac.exe")
CACHE = os.path.join(os.path.dirname(INSTALL.rstrip("\\/")), "stellar-surfer-build")
os.makedirs(CACHE, exist_ok=True)

def lib_path(name):
    g, a, v = name.split(":")[:3]
    cls = name.split(":")[3] if name.count(":") >= 3 else None
    f = f"{a}-{v}" + (f"-{cls}" if cls else "") + ".jar"
    return os.path.join(LIB, *g.split("."), a, v, f)

# 1) vanilla client remapped to Mojang names (cached)
neoform = None
vj = json.load(open(os.path.join(INSTALL, "versions", f"neoforge-{NEO}", f"neoforge-{NEO}.json")))
args = vj["arguments"]["game"]
neoform = args[args.index("--fml.neoFormVersion") + 1]
MC = os.path.join(CACHE, f"client-1.21.1-{neoform}-mojmap.jar")
if not os.path.exists(MC):
    base = os.path.join(LIB, "net", "minecraft", "client", f"1.21.1-{neoform}")
    art = sorted(glob.glob(os.path.join(LIB, "net", "neoforged", "AutoRenamingTool", "*", "*-all.jar")))[-1]
    subprocess.run([JAVA, "-jar", art, "--input", os.path.join(base, f"client-1.21.1-{neoform}-slim.jar"), "--output", MC,
                    "--map", os.path.join(base, f"client-1.21.1-{neoform}-mappings.txt"), "--reverse"], check=True, stdout=subprocess.DEVNULL)

# 2) classpath: NeoForge patched classes first, then vanilla, NeoForge, libraries, Apoli
cp = [os.path.join(LIB, "net", "neoforged", "neoforge", NEO, f"neoforge-{NEO}-client.jar"), MC,
      os.path.join(LIB, "net", "neoforged", "neoforge", NEO, f"neoforge-{NEO}-universal.jar")]
for j in (vj, json.load(open(os.path.join(INSTALL, "versions", "1.21.1", "1.21.1.json")))):
    for l in j.get("libraries", []):
        p = lib_path(l["name"])
        if os.path.exists(p) and p not in cp: cp.append(p)
for a in vj["arguments"]["jvm"]:
    if isinstance(a, str) and "${library_directory}" in a:
        for part in a.split("${classpath_separator}"):
            p = part.replace("${library_directory}", LIB).replace("/", os.sep)
            if p.endswith(".jar") and os.path.exists(p) and p not in cp: cp.append(p)
cp.append(APOLI)
cp += sys.argv[4:]

# 3) compile
if os.path.exists(OUT): shutil.rmtree(OUT)
os.makedirs(OUT)
srcs = [os.path.join(d, f) for d, _, fs in os.walk(SRC) for f in fs if f.endswith(".java")]
argfile = os.path.join(CACHE, "javac.args")
with open(argfile, "w", encoding="utf-8") as f:
    f.write("-encoding UTF-8 --release 21 -nowarn -proc:none\n-cp \"" + os.pathsep.join(cp).replace("\\", "/") + "\"\n-d \"" + OUT.replace("\\", "/") + "\"\n")
    for s in srcs: f.write("\"" + s.replace("\\", "/") + "\"\n")
r = subprocess.run([JAVAC, "@" + argfile])
if r.returncode: sys.exit(r.returncode)
print("classes:", sum(len(fs) for _, _, fs in os.walk(OUT)), "->", OUT)
