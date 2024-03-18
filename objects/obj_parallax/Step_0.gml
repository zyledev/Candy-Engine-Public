global.ScrollOffset++;
for (var i = 0; i < array_length(layers); i++)
{
	if (layers[i] != undefined)
	{
		with (layers[i])
		{
			var x_pos = layer_xoffset + layer_xshift;
			var y_pos = layer_yoffset + layer_yshift;
			var parallax_value = parallax_layer(layer_id);
			layer_xshift += layer_xspeed;
			layer_yshift += layer_yspeed;
			layer_x(layer_id, parallax_value[0] + x_pos);
			layer_y(layer_id, parallax_value[1] + y_pos);
			layer_background_speed(layer_id, layer_image_speed);
		}
	}
}
var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
layer_x("Backgrounds_1", _cam_x * 0.25);
layer_y("Backgrounds_1", _cam_y * 0.25);
layer_x("Backgrounds_2", _cam_x * 0.15);
layer_y("Backgrounds_2", _cam_y * 0.15);
layer_x("Backgrounds_3", _cam_x * 0.05);
layer_y("Backgrounds_3", _cam_y * 0.05);
layer_x("Backgrounds_Ground1", _cam_x * 0.25);
layer_x("Backgrounds_Ground2", _cam_x * 0.25);
layer_x("Backgrounds_still", _cam_x);
layer_y("Backgrounds_still", _cam_y);
layer_x("Backgrounds_stillh", _cam_x * 0.25);
layer_y("Backgrounds_stillh", _cam_y);
layer_x("Backgrounds_stilld", layer_get_x("Backgrounds_stilld"));
layer_y("Backgrounds_stilld", layer_get_y("Backgrounds_stilld"));
scroll1 += layer_get_hspeed("Backgrounds_cloud");
layer_x("Backgrounds_cloud", _cam_x + scroll1);
layer_x("Backgrounds_moon", _cam_x * 0.99);
var bgs1 = layer_background_get_sprite(layer_background_get_id(layer_get_id("Backgrounds_still1")));
if bgs1 != -1 { // this if statement is important to fix the runtime
	var _value = _cam_y - clamp(_cam_y * (0.15 * (540 / room_height)), 0, sprite_get_height(bgs1) - 540);
	layer_y("Backgrounds_still1", _value);
}
