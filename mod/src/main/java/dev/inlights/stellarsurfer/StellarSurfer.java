package dev.inlights.stellarsurfer;

import net.neoforged.api.distmarker.Dist;
import net.neoforged.fml.common.Mod;
import net.neoforged.fml.loading.FMLEnvironment;

/**
 * Stellar Surfer, NeoForge version.
 * The gameplay is the bundled datapack (identical to the datapack zip). This code only adds a client-side visual layer:
 * a constellation-style skill tree and glow halos on orbs and motes. Nothing here changes gameplay.
 */
@Mod(StellarSurfer.MODID)
public final class StellarSurfer {
    public static final String MODID = "stellar_surfer";

    public StellarSurfer() {
        if (FMLEnvironment.dist == Dist.CLIENT) {
            dev.inlights.stellarsurfer.client.ClientSetup.init();
        }
    }
}
