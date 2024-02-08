if (room == rank_room || room == timesuproom)
	visible = false;
else
	visible = true;
if (global.panic)
	timestop = 0;
if (global.panic == 0)
	timestop = 1;
if (global.seconds == 0 && global.minutes == 0)
	alarm[1] = -1;
if (global.seconds < 0)
{
	global.seconds = 59;
	global.minutes -= 1;
}
if (global.seconds > 59)
{
	global.minutes += 1;
	global.seconds -= 59;
}
if (global.playseconds > 59)
{
	global.playminutes += 1;
	global.playseconds -= 59;
}
if ((global.panic && global.minutes < 1) || obj_player.sprite_index == spr_player_timeup)
{
	shake_mag = 2;
	shake_mag_acc = 3 / room_speed;
}
else if (global.panic && basement = 0)
{
	shake_mag = 2;
	shake_mag_acc = 3 / room_speed;
}
if (shake_mag > 0)
{
	shake_mag -= shake_mag_acc;
	if (shake_mag < 0)
		shake_mag = 0;
}
if (global.smoothcam == 0)
{
	if (instance_exists(obj_player) && (obj_player.state != states.timesup && obj_player.state != states.gameover))
	{
		var target = obj_player;
		var _cam_x = target.x - (camera_get_view_width(view_camera[0]) / 2);
		var _cam_y = target.y - (camera_get_view_height(view_camera[0]) / 2);
		if (obj_player.state == states.mach3 || obj_player.state == states.machroll)
		{
			if (chargecamera > (obj_player.xscale * 100))
				chargecamera -= 2;
			if (chargecamera < (obj_player.xscale * 100))
				chargecamera += 2;
			_cam_x += chargecamera;
		}
		else
		{
			if (chargecamera > 0)
				chargecamera -= 2;
			if (chargecamera < 0)
				chargecamera += 2;
			_cam_x += chargecamera;
		}
		_cam_x = clamp(_cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
		_cam_y = clamp(_cam_y, 0, room_height - camera_get_view_height(view_camera[0]));
		if (shake_mag != 0)
		{
			_cam_x += irandom_range(-shake_mag, shake_mag);
			_cam_y += irandom_range(-shake_mag, shake_mag);
		}
		camera_set_view_pos(view_camera[0], _cam_x, _cam_y);
	}
}
else
{
	target = obj_player;
	_cam_x = target.x - (camera_get_view_width(view_camera[0]) / 2);
	_cam_y = target.y - (camera_get_view_height(view_camera[0]) / 2);
	_cam_x = clamp(_cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
	_cam_y = clamp(_cam_y, 0, room_height - camera_get_view_height(view_camera[0]));
	camera_set_view_pos(view_camera[0], lerp(camera_get_view_x(view_camera[0]), _cam_x, 0.2) + irandom_range(-shake_mag, shake_mag), lerp(camera_get_view_y(view_camera[0]), _cam_y, 0.2) + irandom_range(-shake_mag, shake_mag));
}
if (global.panic && global.minutes == 0 && global.seconds == 0 && room != timesuproom)
{
	if (!instance_exists(obj_coneball))
		instance_create(0, 0, obj_coneball);
}
if (global.panic && global.screentilt == 1)
{
	camera_set_view_angle(view_camera[0], scr_sin(angle / (global.minutes + 2), 5));
	clamp(angle, -5, 5);
	if (angle >= 5)
		angledir = -1;
	else if (angle <= -5)
		angledir = 1;
	if (angle < 5 && angledir == 1)
		angle += 0.025;
	if (angle > -5 && angledir == -1)
		angle -= 0.025;
}
if (global.panicbg == 1 && global.panic == 1)
	global.wave = clamp(clamp(global.wave + (60 / room_speed), 0, global.maxwave - (((global.minutes * 60) + global.seconds) * 60)), 0, global.maxwave);
