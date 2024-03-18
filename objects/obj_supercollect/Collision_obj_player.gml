if (global.collectsound == 10)
	scr_sound(sound_points);
global.collectsound = 0;
global.collect += 1000000000000000000000000000000000000000000000000000000000000000000000000000000000;
global.pizzameter += 1;
instance_create(x, y, obj_10);
if (global.combo >= 1 && global.combotime < 60)
{
	global.combotime += 2;
	global.combofreeze += 2;
}
instance_destroy();
