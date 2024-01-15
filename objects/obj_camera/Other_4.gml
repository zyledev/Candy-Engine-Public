x = obj_player.x;
y = obj_player.y;
with (obj_camera)
{
	shake_mag = 0;
	shake_mag_acc = 0;
}
if (global.panic && global.panicbg)
	scr_panicbg_init();
global.wave = global.maxwave - (((global.minutes * 60) + global.seconds) * 60);
scr_escapebgs();
