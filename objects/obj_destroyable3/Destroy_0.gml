if (ds_list_find_index(global.saveroom, id) == -1)
{
	with (instance_create(x + 32, y + 32, obj_debris))
		sprite_index = spr_bigdebris;
	with (instance_create(x + 32, y + 32, obj_debris))
		sprite_index = spr_bigdebris;
	with (instance_create(x + 32, y + 32, obj_debris))
		sprite_index = spr_bigdebris;
	with (instance_create(x + 32, y + 32, obj_debris))
		sprite_index = spr_bigdebris;
	with (instance_create(x + 32, y + 32, obj_debris))
		sprite_index = spr_bigdebris;
	with (instance_create(x + 32, y + 32, obj_debris))
		sprite_index = spr_bigdebris;
	with (instance_create(x + 32, y + 32, obj_debris))
		sprite_index = spr_bigdebris;
	if (audio_is_playing(sound_destroyblock1) || audio_is_playing(sound_destroyblock2))
	{
		audio_stop_sound(sound_destroyblock1);
		audio_stop_sound(sound_destroyblock2);
	}
	scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
	ds_list_add(global.saveroom, id);
}
