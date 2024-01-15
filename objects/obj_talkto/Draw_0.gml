draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
if (drawing)
{
	draw_set_font(font_dev);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(x, y - 32, message);
}
