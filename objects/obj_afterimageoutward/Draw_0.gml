pal_swap_set(spr_afterimagepal, color, false);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, gonealpha);
pal_swap_reset();
