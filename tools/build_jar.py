"""Build the NeoForge mod jar (no code, lowcodefml): datapack data/ + resource pack assets/ in one file.
Usage: python build_jar.py <datapack dir> <resourcepack dir> <logo.png> <version> <out.jar>"""
import os, sys, zipfile, json
dp, rp, logo, ver, out = sys.argv[1:6]
TOML = f'''modLoader="lowcodefml"
loaderVersion="[1,)"
license="All Rights Reserved"
issueTrackerURL="https://github.com/ChRiS-git28/stellar-surfer/issues"

[[mods]]
modId="stellar_surfer"
version="{ver}"
displayName="Stellar Surfer"
logoFile="stellar_surfer.png"
authors="InLighTs"
displayURL="https://github.com/ChRiS-git28/stellar-surfer"
description=\'\'\'Fall from the stars, ride the endless sky and bend gravity to your will: a new origin for Origins.
Datapack and Cosmic Visuals resource pack bundled in one mod. Do not install the separate zips with this jar.\'\'\'

[[dependencies.stellar_surfer]]
modId="minecraft"
type="required"
versionRange="[1.21.1,1.22)"
ordering="NONE"
side="BOTH"

[[dependencies.stellar_surfer]]
modId="origins"
type="required"
versionRange="*"
ordering="AFTER"
side="BOTH"

[[dependencies.stellar_surfer]]
modId="apoli"
type="required"
versionRange="*"
ordering="AFTER"
side="BOTH"
'''
META = {"pack": {"description": "Stellar Surfer " + ver, "pack_format": 48, "supported_formats": [34, 48]}}
n = 0
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    z.writestr("META-INF/MANIFEST.MF", "Manifest-Version: 1.0\r\nImplementation-Title: stellar_surfer\r\nImplementation-Version: " + ver + "\r\n\r\n")
    z.writestr("META-INF/neoforge.mods.toml", TOML)
    z.writestr("pack.mcmeta", json.dumps(META, indent=1))
    z.write(logo, "stellar_surfer.png")
    for base, top in ((dp, "data"), (rp, "assets")):
        root = os.path.join(base, top)
        for d, _, fs in os.walk(root):
            for f in fs:
                p = os.path.join(d, f)
                z.write(p, os.path.relpath(p, base).replace(os.sep, "/")); n += 1
print(os.path.basename(out), n, "files", os.path.getsize(out) // 1024, "KB")
