function scr_player_comingoutdoor()
{
	mach2 = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = false;
	moveAnim = true;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	machhitAnim = 0;
	hsp = 0;
	if (animation_end() || (!place_meeting(x, y, obj_door) && !place_meeting(x, y, obj_keydoorclock) && !place_meeting(x, y, obj_keydoor) && !place_meeting(x, y, obj_exitgate)))
	{
		start_running = 1;
		movespeed = 0;
		state = states.normal;
		image_alpha = 1;
	}
	sprite_index = spr_walkfront;
	image_speed = 0.35;
}
