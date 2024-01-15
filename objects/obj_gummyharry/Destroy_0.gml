if (!ds_list_find_index(global.saveroom, id))
{
	instance_create(x, y, obj_harrydead);
	global.panic = 1;
	obj_camera.alarm[1] = 60;
	var time_array = scr_escapetimes();
	global.minutes = time_array[0];
	global.seconds = time_array[1];
	global.wave = false;
	global.maxwave = ((global.minutes * 60) + global.seconds) * 60;
	if (global.panicbg)
		scr_panicbg_init();
	instance_create(x, y, obj_panicchanger);
	ds_list_add(global.saveroom, id);
}
