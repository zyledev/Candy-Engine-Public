if (place_meeting(x, y, obj_player) && !global.treat)
{
	global.treat = true;
	sprite_index = spr_rosettegivetreat;
}
if (!global.treat)
	sprite_index = spr_rosette;
