if (ds_list_find_index(global.saveroom, id) == -1)
{
	repeat (4) {
	instance_create(x + 16, y, obj_debris);
	}
	if (audio_is_playing(sound_destroyblock1) || audio_is_playing(sound_destroyblock2))
	{
		audio_stop_sound(sound_destroyblock1);
		audio_stop_sound(sound_destroyblock2);
	}
	scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
	ds_list_add(global.saveroom, id);
}
var lay_id = layer_get_id(layer_tile);
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, x, y);
data = tile_set_empty(data);
tilemap_set_at_pixel(map_id, data, x, y);
