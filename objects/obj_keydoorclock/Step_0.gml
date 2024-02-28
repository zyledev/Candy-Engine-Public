if (obj_player.state == states.normal && obj_player.key_up && obj_player.grounded == 1 && global.key_inv == 1 && place_meeting(x, y, obj_player))
{
	ds_list_add(global.saveroom, id);
	scr_sound(sound_unlockingdoor);
	obj_player.state = states.victory;
	obj_player.image_index = 0;
	image_index = 0;
	obj_player.sprite_index = obj_player.spr_lookdoor;
	sprite_index = spr_clockdoor;
	image_speed = 0.35;
	instance_create(x, y, obj_lock);
	global.key_inv = false;
	global.roomsave = false;
}
with (obj_player)
{
	if (place_meeting(x, y, obj_keydoorclock) && state = states.normal && other.sprite_index == spr_clockdoor && obj_player.grounded && key_up && (state = states.normal || state = states.mach1 || state = states.mach2 || state = states.mach3) && y == (other.y + 50) && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.door && state != states.victory && state != states.comingoutdoor)
	{
		sprite_index = spr_lookdoor;
		ds_list_add(global.saveroom, id);
		mach2 = 0;
		image_index = 0;
		obj_camera.chargecamera = 0;
		targetDoor = other.targetDoor;
		targetRoom = other.targetRoom;
		state = states.door;
		instance_create(x, y, obj_fadeout);
		global.roomsave = false;
	}
}
if (floor(image_index) == 2)
	image_speed = 0;
if (floor(obj_player.image_index) == (obj_player.image_number - 1) && obj_player.state = states.victory)
{
	with (obj_player)
	{
		targetDoor = other.targetDoor;
		targetRoom = other.targetRoom;
		if (!instance_exists(obj_fadeout))
			instance_create(x, y, obj_fadeout);
	}
}
