if (state != baddiestates.grabbed)
	scr_collide();
if (state == baddiestates.grabbed)
{
	vsp = 0;
	hsp = 0;
}
if (thrown && object_index != obj_applejim)
	instance_create(x, y, obj_baddiethrow);
if (place_meeting(x + 1, y, obj_baddiethrow) && !thrown)
	instance_destroy();
if (place_meeting(x + 1, y, obj_player) && obj_player.state == states.tumble && object_index != obj_crackerkicker)
	instance_destroy();
if (place_meeting(x + 1, y, obj_player) && obj_player.state == states.breakdance)
	instance_destroy();
