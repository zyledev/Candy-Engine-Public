if (global.debugmode == 1)
{
	font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
	draw_set_font(font);
	draw_set_halign(1);
	draw_set_color(c_white);
	draw_text(0, 50, obj_player.state);
	draw_rectangle(obj_player.bbox_left, obj_player.bbox_top, obj_player.bbox_right, obj_player.bbox_bottom, true);
	var roomname = string_upper(room_get_name(room));
	draw_text(0, 100, roomname);
	var spritename = string_upper(sprite_get_name(obj_player.sprite_index));
	draw_text(0, 150, spritename);
	draw_set_halign(0);
}
