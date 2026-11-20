package dev.inlights.stellarsurfer.client;

import com.mojang.blaze3d.vertex.PoseStack;
import com.mojang.blaze3d.vertex.VertexConsumer;
import net.minecraft.client.Camera;
import net.minecraft.client.Minecraft;
import net.minecraft.client.renderer.LightTexture;
import net.minecraft.client.renderer.MultiBufferSource;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.texture.OverlayTexture;
import net.minecraft.core.component.DataComponents;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.Display;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.component.CustomModelData;
import net.minecraft.world.phys.Vec3;
import net.neoforged.neoforge.client.event.RenderLevelStageEvent;

/**
 * Soft additive glow halos drawn around the datapack's orb cores, motes and constellation stars
 * (item_display entities showing structure_void with a Stellar Surfer custom model), every frame and interpolated.
 * Gives the "bloom" that otherwise needs a shader pack.
 */
public final class GlowRenderer {
    private static final ResourceLocation HALO = ResourceLocation.fromNamespaceAndPath("stlboy", "textures/misc/halo.png");
    private static final double MAX_DIST_SQ = 64 * 64;
    private static final int MAX_HALOS = 800;
    private static boolean broken = false;

    private GlowRenderer() {}

    /** color (0xRRGGBB, already scaled = intensity since the blend is additive) and size in blocks, or null = no halo */
    private static float[] style(int cmd) {
        return switch (cmd) {
            case 7113 -> new float[]{0x6FD8F0, 0.42f};          // cyan mote
            case 7115 -> new float[]{0xE8B860, 0.42f};          // gold mote
            case 7116 -> new float[]{0xA070F0, 0.42f};          // violet mote
            case 7002 -> new float[]{0x9FC8FF, 0.55f};          // constellation star
            case 7130 -> new float[]{0x8050E0, 2.2f};           // Black Hole core
            case 7133 -> new float[]{0xFFE0A0, 2.4f};           // White Hole core
            case 7012, 7137 -> new float[]{0xD070F0, 2.8f};     // Supernova / wormhole core
            default -> null;
        };
    }

    static void onRenderLevel(RenderLevelStageEvent event) {
        if (broken || event.getStage() != RenderLevelStageEvent.Stage.AFTER_PARTICLES) return;
        Minecraft mc = Minecraft.getInstance();
        if (mc.level == null) return;
        try {
            render(event, mc);
        } catch (Throwable t) {
            broken = true;
            ClientSetup.LOG.error("Stellar glow halos disabled after an error", t);
        }
    }

    private static void render(RenderLevelStageEvent event, Minecraft mc) {
        Camera cam = event.getCamera();
        Vec3 cp = cam.getPosition();
        float pt = event.getPartialTick().getGameTimeDeltaPartialTick(false);
        float time = (mc.level.getGameTime() + pt) / 20f;
        PoseStack ps = event.getPoseStack();
        MultiBufferSource.BufferSource buffers = mc.renderBuffers().bufferSource();
        RenderType type = RenderType.eyes(HALO);
        VertexConsumer vc = null;
        int n = 0;
        for (Entity e : mc.level.entitiesForRendering()) {
            if (!(e instanceof Display.ItemDisplay d)) continue;
            Display.ItemDisplay.ItemRenderState rs = d.itemRenderState();
            if (rs == null) continue;
            ItemStack st = rs.itemStack();
            if (st == null || !st.is(Items.STRUCTURE_VOID)) continue;
            CustomModelData cmd = st.get(DataComponents.CUSTOM_MODEL_DATA);
            if (cmd == null) continue;
            float[] s = style(cmd.value());
            if (s == null) continue;
            if (e.distanceToSqr(cp) > MAX_DIST_SQ) continue;
            if (vc == null) vc = buffers.getBuffer(type);
            Vec3 p = e.getPosition(pt);
            int rgb = (int) s[0];
            float pulse = 0.85f + 0.15f * (float) Math.sin(time * 3.1f + e.getId() * 0.7f);
            float size = s[1] * pulse;
            ps.pushPose();
            ps.translate(p.x - cp.x, p.y - cp.y, p.z - cp.z);
            ps.mulPose(cam.rotation());
            quad(vc, ps.last(), size, (rgb >> 16) & 255, (rgb >> 8) & 255, rgb & 255);
            ps.popPose();
            if (++n >= MAX_HALOS) break;
        }
        if (vc != null) buffers.endBatch(type);
    }

    private static void quad(VertexConsumer vc, PoseStack.Pose pose, float s, int r, int g, int b) {
        float h = s / 2f;
        vertex(vc, pose, -h, -h, 0f, 1f, r, g, b);
        vertex(vc, pose, h, -h, 1f, 1f, r, g, b);
        vertex(vc, pose, h, h, 1f, 0f, r, g, b);
        vertex(vc, pose, -h, h, 0f, 0f, r, g, b);
    }

    private static void vertex(VertexConsumer vc, PoseStack.Pose pose, float x, float y, float u, float v, int r, int g, int b) {
        vc.addVertex(pose, x, y, 0f).setColor(r, g, b, 255).setUv(u, v)
          .setOverlay(OverlayTexture.NO_OVERLAY).setLight(LightTexture.FULL_BRIGHT).setNormal(pose, 0f, 0f, 1f);
    }
}
