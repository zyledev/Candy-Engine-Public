if (place_meeting(x, y, obj_player) && global.treat)
{
	global.treat = false;
	sprite_index = spr_gnomechompskiblowupbegin;
	image_xscale *= -1;
}
if (sprite_index == spr_gnomechompskiblowupbegin && animation_end())
{
	with (instance_nearest(x, y, obj_gnomewall))
		instance_destroy();
	sprite_index = spr_gnomechompskiblowup;
}
