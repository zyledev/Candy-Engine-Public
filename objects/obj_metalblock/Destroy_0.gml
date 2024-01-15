if (ds_list_find_index(global.saveroom, id) == -1)
{
	instance_create(x + 32, y + 32, obj_metaldebris);
	instance_create(x + 32, y + 32, obj_metaldebris);
	instance_create(x + 32, y + 32, obj_metaldebris);
	instance_create(x + 32, y + 32, obj_metaldebris);
	with (obj_camera)
	{
		shake_mag = 20;
		shake_mag_acc = 40 / room_speed;
	}
	scr_sound(sound_metaldestroy);
	ds_list_add(global.saveroom, id);
}
