package dev.inlights.stellarsurfer.client;

import com.mojang.blaze3d.systems.RenderSystem;
import com.mojang.math.Axis;
import dev.overgrown.apoli.client.skill.ClientSkillState;
import dev.overgrown.apoli.network.payload.BuySkillC2S;
import dev.overgrown.apoli.network.payload.RefundSkillC2S;
import dev.overgrown.apoli.network.payload.SkillDefsSyncS2C;
import dev.overgrown.apoli.skill.SkillFrame;
import dev.overgrown.apoli.skill.SkillPlacement;
import net.minecraft.ChatFormatting;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.client.resources.sounds.SimpleSoundInstance;
import net.minecraft.network.chat.Component;
import net.minecraft.network.chat.MutableComponent;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.util.Mth;
import net.minecraft.world.item.ItemStack;
import net.neoforged.neoforge.network.PacketDistributor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Random;

/**
 * Stellar Path as a living five-pointed constellation. Positions come from the skills' "placement" (written in the datapack,
 * so the Apoli screen of the datapack version shows the same geometry); each class branch has its own colour and star model.
 * Click buys (same packet as the Apoli screen), shift-click refunds. Gameplay is entirely Apoli's.
 */
public class StellarSkillScreen extends Screen {
    private static ResourceLocation tex(String p) { return ResourceLocation.fromNamespaceAndPath("stlboy", "textures/gui/skill/" + p + ".png"); }
    private static final ResourceLocation HALO = tex("halo"), STAR = tex("star"), RING = tex("ring"), CENTER = tex("center_star");
    /** Apoli placement units, in GUI pixels (same as the Apoli screen: x*28, y*27) */
    private static final float UX = 28f, UY = 27f;

    private record Theme(int color, ResourceLocation model) {}
    private static final Map<String, Theme> THEMES = Map.of(
            "cls_nebula", new Theme(0xB48CFF, tex("cls_nebula")),
            "cls_sun", new Theme(0xFFC24A, tex("cls_sun")),
            "cls_neptune", new Theme(0x4FA8FF, tex("cls_neptune")),
            "cls_aurora", new Theme(0x7DFFB0, tex("cls_aurora")),
            "cls_betelgeuse", new Theme(0xFF6A48, tex("cls_betelgeuse")));
    private static final Theme NEUTRAL = new Theme(0xC9D6FF, STAR);

    private final ResourceLocation root;
    private final Map<ResourceLocation, float[]> pos = new HashMap<>();
    private final Map<ResourceLocation, ResourceLocation> parentOf = new HashMap<>();
    private final Map<ResourceLocation, ResourceLocation> branchOf = new HashMap<>();
    private final Map<ResourceLocation, Integer> depthOf = new HashMap<>();
    private final List<ResourceLocation> nodes = new ArrayList<>();
    private final Map<ResourceLocation, Long> bursts = new HashMap<>();
    private final float[][] stars = new float[240][4];
    private float scrollX, scrollY, zoom = 1f, extent = 200f;
    private double pressX, pressY;
    private boolean dragging, zoomFitted;
    private long openedAt;
    private int layoutHash;

    public StellarSkillScreen(ResourceLocation root) {
        super(Component.translatableWithFallback("gui.stellar_surfer.skill.title", "Stellar Path"));
        this.root = root;
        Random r = new Random(7L);
        for (float[] s : stars) { s[0] = r.nextFloat(); s[1] = r.nextFloat(); s[2] = r.nextFloat() * 6.28f; s[3] = 0.4f + r.nextFloat() * 1.6f; }
    }

    /** the Stellar Surfer tree among the trees the player has, or null */
    public static ResourceLocation findRoot() {
        for (ResourceLocation r : ClientSkillState.roots()) if ("stlboy".equals(r.getNamespace())) return r;
        return null;
    }

    @Override
    protected void init() {
        if (openedAt == 0) openedAt = System.currentTimeMillis();
        relayout();
        if (!zoomFitted) {
            zoom = Mth.clamp(Math.min(width, height - 50) / (2f * extent + 70f), 0.45f, 1.4f);
            zoomFitted = true;
        }
    }

    // ---------------------------------------------------------------- layout
    private int stateHash() { return ClientSkillState.childrenOf(root).size() * 131 + nodes.size(); }

    private void relayout() {
        pos.clear(); parentOf.clear(); branchOf.clear(); depthOf.clear(); nodes.clear();
        pos.put(root, new float[]{0, 0});
        collect(root, null, 0);
        // datapack placements (preferred) or a radial fallback
        boolean placed = !nodes.isEmpty();
        for (ResourceLocation n : nodes) {
            SkillDefsSyncS2C.Entry e = ClientSkillState.def(n);
            Optional<SkillPlacement> p = e == null ? Optional.empty() : e.placement();
            if (p.isPresent()) pos.put(n, new float[]{p.get().x() * UX, p.get().y() * UY});
            else placed = false;
        }
        if (!placed) radial();
        extent = 60f;
        for (float[] p : pos.values()) extent = Math.max(extent, Math.max(Math.abs(p[0]), Math.abs(p[1])));
        layoutHash = stateHash();
    }

    private void collect(ResourceLocation id, ResourceLocation branch, int depth) {
        if (depth > 32) return;
        for (ResourceLocation c : visibleChildren(id)) {
            if (parentOf.containsKey(c)) continue;
            ResourceLocation b = branch == null ? c : branch;
            parentOf.put(c, id); branchOf.put(c, b); depthOf.put(c, depth + 1); nodes.add(c);
            collect(c, b, depth + 1);
        }
    }

    private List<ResourceLocation> visibleChildren(ResourceLocation id) {
        List<ResourceLocation> out = new ArrayList<>();
        for (ResourceLocation c : ClientSkillState.childrenOf(id)) if (!ClientSkillState.isHidden(c)) out.add(c);
        out.sort((a, b) -> {
            SkillDefsSyncS2C.Entry ea = ClientSkillState.def(a), eb = ClientSkillState.def(b);
            int oa = ea == null ? 0 : ea.order(), ob = eb == null ? 0 : eb.order();
            return oa != ob ? Integer.compare(oa, ob) : a.compareTo(b);
        });
        return out;
    }

    /** fallback when a skill has no placement: same idea as the datapack layout (one sector per top branch) */
    private void radial() {
        List<ResourceLocation> top = visibleChildren(root);
        for (int i = 0; i < top.size(); i++) {
            double axis = -Math.PI / 2 + i * Math.PI * 2 / Math.max(1, top.size());
            radialPlace(top.get(i), 1, axis - 0.55, axis + 0.55);
        }
    }

    private void radialPlace(ResourceLocation n, int depth, double a0, double a1) {
        double mid = (a0 + a1) / 2;
        float r = 72f + 50f * (depth - 1);
        pos.put(n, new float[]{(float) Math.cos(mid) * r, (float) Math.sin(mid) * r});
        List<ResourceLocation> ch = visibleChildren(n);
        double span = (a1 - a0) / Math.max(1, ch.size());
        for (int i = 0; i < ch.size(); i++) radialPlace(ch.get(i), depth + 1, a0 + span * i, a0 + span * (i + 1));
    }

    // ---------------------------------------------------------------- state helpers
    private static boolean obtained(ResourceLocation id) { return ClientSkillState.isObtained(id) || ClientSkillState.isPurchased(id); }

    private static boolean buyable(ResourceLocation id) {
        SkillDefsSyncS2C.Entry e = ClientSkillState.def(id);
        return e != null && !obtained(id) && ClientSkillState.canBuy(e);
    }

    private static boolean reachable(ResourceLocation id) {
        SkillDefsSyncS2C.Entry e = ClientSkillState.def(id);
        return e != null && !obtained(id) && !ClientSkillState.isLocked(id) && ClientSkillState.excludedBy(id) == null && ClientSkillState.parentSatisfied(e);
    }

    private Theme theme(ResourceLocation id) {
        ResourceLocation b = branchOf.get(id);
        Theme t = b == null ? null : THEMES.get(b.getPath());
        return t == null ? NEUTRAL : t;
    }

    /** opening animation: each star flies out from the heart, branch by branch, ring by ring */
    private float appear(ResourceLocation id) {
        float t = (System.currentTimeMillis() - openedAt) / 1000f - depthOf.getOrDefault(id, 1) * 0.07f;
        float k = Mth.clamp(t / 0.45f, 0f, 1f);
        return k * k * (3 - 2 * k);
    }

    private float[] drawPos(ResourceLocation id) {
        float[] p = pos.get(id);
        if (p == null) return null;
        float k = appear(id);
        return new float[]{p[0] * k, p[1] * k};
    }

    // ---------------------------------------------------------------- render
    @Override
    public void renderBackground(GuiGraphics g, int mouseX, int mouseY, float partial) {
        float t = (System.currentTimeMillis() - openedAt) / 1000f;
        g.fillGradient(0, 0, width, height, 0xF406051A, 0xF4120926);
        tinted(g, HALO, width * 0.22f + 30 * Mth.sin(t * 0.07f), height * 0.32f, 440, 0x3A1E6E, 0.55f);
        tinted(g, HALO, width * 0.8f, height * 0.72f + 25 * Mth.cos(t * 0.05f), 400, 0x123C6A, 0.5f);
        tinted(g, HALO, width * 0.62f + scrollX * 0.05f, height * 0.18f + scrollY * 0.05f, 280, 0x5A1E50, 0.35f);
        for (float[] s : stars) {
            float x = ((s[0] * width + scrollX * 0.15f * s[3]) % width + width) % width;
            float y = ((s[1] * height + scrollY * 0.15f * s[3]) % height + height) % height;
            float a = 0.35f + 0.65f * (0.5f + 0.5f * Mth.sin(t * (0.8f + s[3]) + s[2]));
            int sz = s[3] > 1.6f ? 2 : 1;
            g.fill((int) x, (int) y, (int) x + sz, (int) y + sz, (((int) (a * 200) & 255) << 24) | 0xDCE6FF);
        }
        if (layoutHash != stateHash() || nodes.isEmpty()) relayout();
        renderTree(g, mouseX, mouseY, t);
    }

    private void renderTree(GuiGraphics g, int mouseX, int mouseY, float t) {
        g.pose().pushPose();
        g.pose().translate(width / 2f + scrollX, height / 2f + scrollY + 8, 0);
        g.pose().scale(zoom, zoom, 1f);

        // five rays from the heart toward the classes
        for (ResourceLocation c : visibleChildren(root)) {
            float[] p = drawPos(c);
            if (p == null) continue;
            Theme th = theme(c);
            boolean on = obtained(c);
            line(g, 0, 0, p[0], p[1], (on ? 0xCC000000 : 0x55000000) | th.color, on ? 3f : 2f);
        }
        // links: branch colour once open, light flowing outward
        for (ResourceLocation c : nodes) {
            ResourceLocation par = parentOf.get(c);
            if (par == null || par.equals(root)) continue;
            float[] a = drawPos(par), b = drawPos(c);
            if (a == null || b == null) continue;
            Theme th = theme(c);
            boolean on = obtained(c), next = reachable(c) && obtained(par);
            line(g, a[0], a[1], b[0], b[1], on ? (0xDD000000 | th.color) : next ? (0x88000000 | th.color) : 0x2CFFFFFF, on ? 1.8f : 1.1f);
            if (on || next) {
                float k = (t * (on ? 0.5f : 0.32f) + (c.hashCode() & 1023) / 1023f) % 1f;
                tinted(g, HALO, Mth.lerp(k, a[0], b[0]), Mth.lerp(k, a[1], b[1]), on ? 11 : 8, on ? 0xFFFFFF : th.color, on ? 0.9f : 0.7f);
            }
        }

        // heart of the tree: a real five-pointed star, slowly turning, with a breathing corona
        float pulse = 1f + 0.07f * Mth.sin(t * 2f);
        tinted(g, HALO, 0, 0, 120 * pulse, 0x6A40E0, 0.55f);
        rotated(g, RING, 0, 0, 74, t * 10f, 0xC9A6FF, 0.45f);
        rotated(g, CENTER, 0, 0, 58 * pulse, t * 6f, 0xFFF4D8, 1f);
        rotated(g, CENTER, 0, 0, 30, -t * 14f, 0xFFFFFF, 0.9f);

        ResourceLocation hover = hovered(mouseX, mouseY);
        for (ResourceLocation c : nodes) {
            float[] p = drawPos(c);
            SkillDefsSyncS2C.Entry e = ClientSkillState.def(c);
            if (p == null || e == null) continue;
            float ease = appear(c);
            if (ease <= 0.02f) continue;
            Theme th = theme(c);
            boolean on = obtained(c), canBuy = buyable(c), next = reachable(c), hov = c.equals(hover);
            boolean cls = parentOf.get(c) != null && parentOf.get(c).equals(root);
            float tw = 0.5f + 0.5f * Mth.sin(t * 3f + (c.hashCode() & 255));
            float size = (cls ? 44 : e.frame() == SkillFrame.CHALLENGE ? 30 : e.frame() == SkillFrame.GOAL ? 27 : 23) * ease * (hov ? 1.15f : 1f);
            int col = th.color;
            if (on) tinted(g, HALO, p[0], p[1], size * 2.4f, col, 0.7f);
            else if (canBuy) tinted(g, HALO, p[0], p[1], size * (1.9f + 0.5f * tw), col, 0.35f + 0.35f * tw);
            if (cls) {
                // class: its own model, turning, with three motes in orbit
                rotated(g, RING, p[0], p[1], size * 1.5f, t * 18f, col, on ? 0.85f : 0.35f);
                rotated(g, th.model, p[0], p[1], size, t * 8f, on ? lighten(col) : canBuy ? col : 0x55556A, on ? 1f : canBuy ? 0.95f : 0.7f);
                for (int k = 0; k < 3; k++) {
                    double a = t * (on ? 1.4 : 0.6) + k * Math.PI * 2 / 3;
                    float orbit = size * 0.85f;
                    tinted(g, HALO, p[0] + (float) Math.cos(a) * orbit, p[1] + (float) Math.sin(a) * orbit * 0.55f, on ? 9 : 6, on ? 0xFFFFFF : col, on ? 0.95f : 0.4f);
                }
            } else {
                if (e.frame() != SkillFrame.TASK) rotated(g, RING, p[0], p[1], size * 1.45f, t * (e.frame() == SkillFrame.CHALLENGE ? -25f : 15f), on ? col : 0x707090, on ? 0.8f : 0.3f);
                rotated(g, STAR, p[0], p[1], size * (on ? 1f + 0.06f * tw : 1f), on ? t * 20f : 0f, on ? lighten(col) : canBuy ? col : next ? 0x6E6A90 : 0x40405A, on ? 1f : canBuy ? 0.9f : 0.6f);
            }
            ItemStack icon = e.icon() == null ? ItemStack.EMPTY : e.icon().stack();
            if (icon != null && !icon.isEmpty() && ease > 0.7f && !cls) {
                g.pose().pushPose();
                g.pose().translate(p[0], p[1], 50);
                float s = 0.6f;
                g.pose().scale(s, s, 1f);
                g.renderItem(icon, -8, -8);
                g.pose().popPose();
                if (!on && !canBuy) {
                    g.pose().pushPose();
                    g.pose().translate(0, 0, 160);
                    g.fill((int) p[0] - 5, (int) p[1] - 5, (int) p[0] + 5, (int) p[1] + 5, next ? 0x66100C20 : 0xA0100C20);
                    g.pose().popPose();
                }
            }
            if (hov) rotated(g, RING, p[0], p[1], size * 1.8f, -t * 30f, 0xFFFFFF, 0.6f);
            Long b = bursts.get(c);
            if (b != null) {
                float k = (System.currentTimeMillis() - b) / 800f;
                if (k >= 1f) bursts.remove(c);
                else {
                    rotated(g, RING, p[0], p[1], size * (1.2f + 3.2f * k), 0f, col, 1f - k);
                    tinted(g, HALO, p[0], p[1], size * (1.5f + 2f * k), 0xFFFFFF, (1f - k) * 0.8f);
                }
            }
        }
        RenderSystem.setShaderColor(1f, 1f, 1f, 1f);
        g.pose().popPose();
    }

    private static int lighten(int rgb) {
        int r = (rgb >> 16) & 255, gg = (rgb >> 8) & 255, b = rgb & 255;
        return ((r + (255 - r) / 2) << 16) | ((gg + (255 - gg) / 2) << 8) | (b + (255 - b) / 2);
    }

    @Override
    public void render(GuiGraphics g, int mouseX, int mouseY, float partial) {
        super.render(g, mouseX, mouseY, partial);
        Component name = ClientSkillState.treeName(root);
        g.drawCenteredString(font, name == null ? title : name.copy().withStyle(ChatFormatting.BOLD), width / 2, 10, 0xE8D8FF);
        int pts = ClientSkillState.points(root);
        Component points = Component.translatableWithFallback("gui.stellar_surfer.skill.points", "✦ %s skill points", pts);
        g.drawString(font, points, width - font.width(points) - 10, 10, pts > 0 ? 0xFFD27A : 0x9090B0);
        g.drawString(font, Component.translatableWithFallback("gui.stellar_surfer.skill.hint", "Click: unlock · Shift+click: refund · Drag: move · Wheel: zoom"), 8, height - 14, 0x8080A0);
        ResourceLocation hov = hovered(mouseX, mouseY);
        if (hov != null) g.renderComponentTooltip(font, tooltip(hov), mouseX, mouseY);
    }

    private List<Component> tooltip(ResourceLocation id) {
        List<Component> out = new ArrayList<>();
        SkillDefsSyncS2C.Entry e = ClientSkillState.def(id);
        if (e == null) return out;
        int col = theme(id).color;
        out.add(e.name().copy().withStyle(s -> s.withColor(col).withBold(true)));
        if (!e.description().getString().isEmpty()) out.add(e.description().copy().withStyle(ChatFormatting.GRAY));
        int cost = e.cost();
        if (!e.costPoints().isEmpty()) { cost = 0; for (SkillDefsSyncS2C.PointEntry pe : e.costPoints()) cost += pe.amount(); }
        if (!e.costHidden() && cost > 0 && !obtained(id))
            out.add(Component.translatableWithFallback("gui.stellar_surfer.skill.cost", "Cost: %s pt", cost).withStyle(ChatFormatting.DARK_AQUA));
        out.add(status(id, e));
        return out;
    }

    private Component status(ResourceLocation id, SkillDefsSyncS2C.Entry e) {
        if (obtained(id)) {
            MutableComponent c = Component.translatableWithFallback("gui.stellar_surfer.skill.owned", "✦ Unlocked").withStyle(ChatFormatting.GREEN);
            if (ClientSkillState.canRefund(id)) c.append(Component.translatableWithFallback("gui.stellar_surfer.skill.refund", " · Shift+click to refund").withStyle(ChatFormatting.DARK_GRAY));
            return c;
        }
        ResourceLocation ex = ClientSkillState.excludedBy(id);
        if (ex != null) {
            SkillDefsSyncS2C.Entry x = ClientSkillState.def(ex);
            return Component.translatableWithFallback("gui.stellar_surfer.skill.excluded", "Closed by %s", x == null ? ex.toString() : x.name()).withStyle(ChatFormatting.DARK_RED);
        }
        if (ClientSkillState.isLocked(id)) return Component.translatableWithFallback("gui.stellar_surfer.skill.locked", "Locked").withStyle(ChatFormatting.RED);
        if (!ClientSkillState.parentSatisfied(e)) return Component.translatableWithFallback("gui.stellar_surfer.skill.parent", "Unlock the previous star first").withStyle(ChatFormatting.RED);
        if (ClientSkillState.canBuy(e)) return Component.translatableWithFallback("gui.stellar_surfer.skill.buy", "Click to unlock").withStyle(ChatFormatting.YELLOW);
        return Component.translatableWithFallback("gui.stellar_surfer.skill.poor", "Not enough points (or a condition is missing)").withStyle(ChatFormatting.RED);
    }

    // ---------------------------------------------------------------- input
    private ResourceLocation hovered(double mx, double my) {
        float wx = (float) ((mx - width / 2f - scrollX) / zoom), wy = (float) ((my - height / 2f - scrollY - 8) / zoom);
        ResourceLocation best = null;
        float bd = 15f * 15f;
        for (ResourceLocation c : nodes) {
            float[] p = pos.get(c);
            if (p == null) continue;
            float dx = p[0] - wx, dy = p[1] - wy, d = dx * dx + dy * dy;
            if (d < bd) { bd = d; best = c; }
        }
        return best;
    }

    @Override
    public boolean mouseClicked(double mx, double my, int button) {
        if (super.mouseClicked(mx, my, button)) return true;
        pressX = mx; pressY = my; dragging = false;
        return true;
    }

    @Override
    public boolean mouseDragged(double mx, double my, int button, double dx, double dy) {
        if (Math.abs(mx - pressX) + Math.abs(my - pressY) > 4) dragging = true;
        if (dragging) { scrollX += (float) dx; scrollY += (float) dy; }
        return true;
    }

    @Override
    public boolean mouseReleased(double mx, double my, int button) {
        boolean wasDrag = dragging;
        dragging = false;
        if (super.mouseReleased(mx, my, button)) return true;
        if (wasDrag || button != 0) return true;
        ResourceLocation id = hovered(mx, my);
        if (id == null) return true;
        SkillDefsSyncS2C.Entry e = ClientSkillState.def(id);
        if (e == null) return true;
        Minecraft mc = Minecraft.getInstance();
        if (hasShiftDown()) {
            if (ClientSkillState.canRefund(id)) {
                PacketDistributor.sendToServer(new RefundSkillC2S(id));
                mc.getSoundManager().play(SimpleSoundInstance.forUI(SoundEvents.AMETHYST_BLOCK_BREAK, 0.8f));
            }
        } else if (!obtained(id) && ClientSkillState.canBuy(e)) {
            PacketDistributor.sendToServer(new BuySkillC2S(id));
            bursts.put(id, System.currentTimeMillis());
            mc.getSoundManager().play(SimpleSoundInstance.forUI(SoundEvents.AMETHYST_BLOCK_RESONATE, 1.4f));
        } else {
            mc.getSoundManager().play(SimpleSoundInstance.forUI(SoundEvents.AMETHYST_BLOCK_HIT, 0.6f));
        }
        return true;
    }

    @Override
    public boolean mouseScrolled(double mx, double my, double sx, double sy) {
        float old = zoom;
        zoom = Mth.clamp(zoom * (sy > 0 ? 1.12f : 1 / 1.12f), 0.35f, 2.2f);
        float cx = (float) (mx - width / 2f), cy = (float) (my - height / 2f - 8);
        scrollX = cx - (cx - scrollX) * zoom / old;
        scrollY = cy - (cy - scrollY) * zoom / old;
        return true;
    }

    @Override
    public boolean isPauseScreen() { return false; }

    // ---------------------------------------------------------------- drawing helpers
    /** textured, tinted sprite centred on (cx, cy); blending is set every time (item rendering turns it off) */
    private static void tinted(GuiGraphics g, ResourceLocation tex, float cx, float cy, float size, int rgb, float alpha) {
        if (size < 0.5f || alpha <= 0.01f) return;
        int n = (tex == STAR || THEMES.values().stream().anyMatch(th -> th.model == tex)) ? 32 : 64;
        RenderSystem.enableBlend();
        RenderSystem.defaultBlendFunc();
        RenderSystem.setShaderColor(((rgb >> 16) & 255) / 255f, ((rgb >> 8) & 255) / 255f, (rgb & 255) / 255f, Mth.clamp(alpha, 0f, 1f));
        g.pose().pushPose();
        g.pose().translate(cx - size / 2f, cy - size / 2f, 0);
        g.pose().scale(size / 64f, size / 64f, 1f);
        g.blit(tex, 0, 0, 64, 64, 0f, 0f, n, n, n, n);
        g.pose().popPose();
        RenderSystem.setShaderColor(1f, 1f, 1f, 1f);
    }

    private static void rotated(GuiGraphics g, ResourceLocation tex, float cx, float cy, float size, float deg, int rgb, float alpha) {
        g.pose().pushPose();
        g.pose().translate(cx, cy, 0);
        g.pose().mulPose(Axis.ZP.rotationDegrees(deg));
        tinted(g, tex, 0, 0, size, rgb, alpha);
        g.pose().popPose();
    }

    private static void line(GuiGraphics g, float x0, float y0, float x1, float y1, int argb, float w) {
        float len = (float) Math.hypot(x1 - x0, y1 - y0);
        if (len < 1f) return;
        RenderSystem.enableBlend();
        RenderSystem.defaultBlendFunc();
        g.pose().pushPose();
        g.pose().translate(x0, y0, 0);
        g.pose().mulPose(Axis.ZP.rotation((float) Math.atan2(y1 - y0, x1 - x0)));
        g.pose().scale(1f, w, 1f);
        g.fill(0, -1, Math.round(len), 1, argb);
        g.pose().popPose();
    }
}
