global.collect += 20;
if (global.combo >= 1)
	global.combotime += 10;
global.combofreeze += 2;
instance_create(x, y, obj_20);
if (audio_is_playing(sound_points))
	audio_stop_sound(sound_points);
scr_sound(sound_points);
instance_destroy();
