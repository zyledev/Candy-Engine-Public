if (global.panic)
{
	scr_collide();
	if (place_meeting(x + 1, y, obj_baddiethrow) && !thrown)
		instance_destroy();
	if (place_meeting(x + 1, y, obj_player) && obj_player.state == states.tumble && object_index != obj_crackerkicker)
		instance_destroy();
	if (place_meeting(x + 1, y, obj_player) && obj_player.state == states.breakdance)
		instance_destroy();
}
