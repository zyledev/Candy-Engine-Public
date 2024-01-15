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
	scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
	with (instance_place(x - (32 * image_xscale), y, obj_solid))
		instance_destroy();
	ds_list_add(global.saveroom, id);
}
