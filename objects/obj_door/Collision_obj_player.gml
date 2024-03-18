if (!place_meeting(x, y, obj_doorblocked))
{
	with (obj_player)
	{
		if (key_up && (state = states.normal || state = states.mach1 || state = states.mach2 || state = states.mach3 || state = states.Sjumpprep) && y = (other.y + 50) && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor)
		{
			sprite_index = spr_lookdoor;
			mach2 = 0;
			obj_camera.chargecamera = 0;
			ds_list_add(global.saveroom, id);
			targetDoor = other.targetDoor;
			targetRoom = other.targetRoom;
			other.visited = true;
			image_index = 0;
			state = states.door;
			instance_create(x, y, obj_fadeout);
		}
	}
}
