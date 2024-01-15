image_alpha = 0.35;
var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
if (!surface_exists(watersurface))
	watersurface = surface_create(960, 540);
if (surface_exists(watersurface))
{
	surface_set_target(watersurface);
	draw_clear_alpha(c_white, 0);
	draw_sprite_ext(spr_molasses2, -1, x - _cam_x, (y + 96) - _cam_y, image_xscale, round((room_height + 960) / 32), image_angle, image_blend, 1);
	draw_sprite_ext(sprite_index, -1, x - _cam_x, y - _cam_y, image_xscale, 1, 0, c_white, 1);
	surface_reset_target();
}
draw_surface_ext(watersurface, _cam_x, _cam_y, 1, 1, 0, c_white, 0.6);
