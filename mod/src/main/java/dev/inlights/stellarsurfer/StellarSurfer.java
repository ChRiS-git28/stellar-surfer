package dev.inlights.stellarsurfer;

import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.server.packs.PackType;
import net.minecraft.server.packs.repository.Pack;
import net.minecraft.server.packs.repository.PackSource;
import net.neoforged.api.distmarker.Dist;
import net.neoforged.bus.api.IEventBus;
import net.neoforged.fml.common.Mod;
import net.neoforged.fml.ModList;
import net.neoforged.fml.loading.FMLEnvironment;
import net.neoforged.neoforge.event.AddPackFindersEvent;

/**
 * Stellar Surfer, NeoForge version.
 * The gameplay is the bundled datapack (identical to the datapack zip). The Cosmic Visuals resource pack is bundled as a
 * built-in pack, always active and placed on top (like the standalone resource pack), so other packs and mods cannot hide
 * its models. The client code only adds visuals: constellation skill tree, glow halos, Origins window skin.
 */
@Mod(StellarSurfer.MODID)
public final class StellarSurfer {
    public static final String MODID = "stellar_surfer";

    public StellarSurfer(IEventBus modBus) {
        modBus.addListener(AddPackFindersEvent.class, StellarSurfer::addPacks);
        if (FMLEnvironment.dist == Dist.CLIENT) {
            dev.inlights.stellarsurfer.client.ClientSetup.init();
        }
    }

    private static void addPacks(AddPackFindersEvent event) {
        if (event.getPackType() != PackType.CLIENT_RESOURCES) return;
        // the "Visuals" client add-on (for the datapack version) has no bundled pack: the player uses the resource pack
        try {
            var file = ModList.get().getModFileById(MODID).getFile();
            if (!java.nio.file.Files.exists(file.findResource("resourcepacks", "cosmic_visuals", "pack.mcmeta"))) return;
        } catch (Throwable t) {
            return;
        }
        event.addPackFinders(ResourceLocation.fromNamespaceAndPath(MODID, "resourcepacks/cosmic_visuals"), PackType.CLIENT_RESOURCES,
                Component.literal("Stellar Surfer — Cosmic Visuals"), PackSource.BUILT_IN, true, Pack.Position.TOP);
    }
}
