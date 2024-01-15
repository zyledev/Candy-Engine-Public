if (pause)
{
	draw_sprite_tiled(bg_paused, 0, x++, y++);
	draw_sprite(spr_pause, selected, 0, 0);
	if (global.mallowfollow)
		draw_sprite(spr_pauseconfecti1, 1, 0, 0);
	else
		draw_sprite(spr_pauseconfecti1, 0, 0, 0);
	if (global.chocofollow)
		draw_sprite(spr_pauseconfecti2, 1, 0, 0);
	else
		draw_sprite(spr_pauseconfecti2, 0, 0, 0);
	if (global.crackfollow)
		draw_sprite(spr_pauseconfecti3, 1, 0, 0);
	else
		draw_sprite(spr_pauseconfecti3, 0, 0, 0);
	if (global.wormfollow)
		draw_sprite(spr_pauseconfecti4, 1, 0, 0);
	else
		draw_sprite(spr_pauseconfecti4, 0, 0, 0);
	if (global.candyfollow)
		draw_sprite(spr_pauseconfecti5, 1, 0, 0);
	else
		draw_sprite(spr_pauseconfecti5, 0, 0, 0);
	pal_swap_set(spr_pal, pal, 0);
	draw_sprite(spr_pizzelle_pause, global.panic, 686, 285);
	shader_reset();
	font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
	draw_set_font(font);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	if (global.playseconds > 10)
		draw_text(86, 32, string_hash_to_newline(string(global.playminutes) + ":" + string(global.playseconds)));
	if (global.playseconds < 10)
		draw_text(86, 32, string_hash_to_newline(string(global.playminutes) + ":0" + string(global.playseconds)));
}
