if (sprite_index != spr_exitgateclosed)
{
	with (obj_player)
	{
		if (key_up && grounded && (state == states.normal || state == states.mach1 || state == states.mach2 || state == states.mach3) && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.victory && state != states.comingoutdoor)
		{
			mach2 = 0;
			obj_camera.chargecamera = 0;
			ds_list_add(global.saveroom, id);
			image_index = 0;
			state = states.victory;
			audio_stop_all();
		}
	}
	if (floor(obj_player.image_index) == (obj_player.image_number - 1) && obj_player.state == states.victory)
	{
		with (obj_player)
		{
			targetDoor = other.targetDoor;
			targetRoom = other.targetRoom;
			if (!instance_exists(obj_fadeout))
				instance_create(x, y, obj_fadeout);
		}
		obj_tv.tvsprite = spr_tvturnon;
		obj_tv.image_index = 0;
	}
}
