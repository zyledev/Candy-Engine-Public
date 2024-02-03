function point_in_camera()
{
	if (argument2 == undefined)
		argument2 = view_camera[0];
	var cam_x = camera_get_view_x(argument2);
	var cam_y = camera_get_view_y(argument2);
	var cam_w = camera_get_view_width(argument2);
	var cam_h = camera_get_view_height(argument2);
	return point_in_rectangle(argument0, argument1, cam_x, cam_y, cam_x + cam_w, cam_y + cam_h);
}
function camera_shake()
{
	with (obj_camera)
	{
		shake_mag = argument0;
		shake_mag_acc = argument1 / room_speed;
	}
}
function camera_get_position_struct(argument0)
{
	if argument0 = undefined
		argument0 = view_camera[0];
	var camera_pos = undefined;
	camera_pos = 
	{
		cam_x: camera_get_view_x(argument0),
		cam_y: camera_get_view_y(argument0),
		centeredcam_x: camera_get_view_x(argument0) + (camera_get_view_width(argument0) / 2),
		centeredcam_y: camera_get_view_y(argument0) + (camera_get_view_height(argument0) / 2)
	};
	return camera_pos;
}
