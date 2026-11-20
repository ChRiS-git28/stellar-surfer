package dev.inlights.stellarsurfer.client;

import dev.overgrown.apoli.client.skill.SkillTreeScreen;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.resources.ResourceLocation;
import net.neoforged.neoforge.client.event.RenderLevelStageEvent;
import net.neoforged.neoforge.client.event.ScreenEvent;
import net.neoforged.neoforge.common.NeoForge;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/** Client-only listeners. Every hook is fail-safe: on error the vanilla Apoli behaviour is kept. */
public final class ClientSetup {
    static final Logger LOG = LoggerFactory.getLogger("stellar_surfer");
    private static boolean screenBroken = false;

    private ClientSetup() {}

    public static void init() {
        NeoForge.EVENT_BUS.addListener(ScreenEvent.Opening.class, ClientSetup::onScreenOpening);
        NeoForge.EVENT_BUS.addListener(RenderLevelStageEvent.class, GlowRenderer::onRenderLevel);
        NeoForge.EVENT_BUS.addListener(ScreenEvent.Render.Pre.class, OriginSkin::onRenderPre);
    }

    private static void onScreenOpening(ScreenEvent.Opening event) {
        if (screenBroken) return;
        try {
            Screen next = event.getNewScreen();
            if (!(next instanceof SkillTreeScreen)) return;
            ResourceLocation root = StellarSkillScreen.findRoot();
            if (root != null) event.setNewScreen(new StellarSkillScreen(root));
        } catch (Throwable t) {
            screenBroken = true;
            LOG.error("Stellar skill screen disabled, falling back to the Apoli screen", t);
        }
    }
}
