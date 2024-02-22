function scr_player_comingoutdoor()
{
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = true;
	machhitAnim = false;
	hsp = 0;
	if animation_end() || !place_meeting(x, y, obj_door) && !place_meeting(x, y, obj_keydoorclock) && !place_meeting(x, y, obj_keydoor) && !place_meeting(x, y, obj_exitgate)
	{
		start_running = true;
		movespeed = 0;
		state = states.normal;
		image_alpha = 1;
	}
	sprite_index = spr_walkfront;
	image_speed = 0.35;
}
