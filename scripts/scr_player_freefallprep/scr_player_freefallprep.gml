function scr_player_freefallprep()
{
	hsp = 0;
	if ((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move = -1)) && !place_meeting(x + sign(hsp), y, obj_slope)
		movespeed = 0;
	start_running = true;
	alarm[4] = 14;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	machslideAnim = true;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = true;
	sprite_index = spr_player_bodyslamstart;
	move = key_left + key_right;
	if !grounded
	{
		hsp = move * movespeed;
		if move != xscale && momemtum && movespeed != 0
			movespeed -= 0.05;
		if movespeed == 0
			momemtum = false;
		if (move == 0 && !momemtum) || scr_solid(x + hsp, y)
		{
			movespeed = 0;
			mach2 = 0;
		}
		if move != 0 && movespeed < 7
			movespeed += 0.25;
		if movespeed > 7
			movespeed -= 0.05;
		if (scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move = -1)
			movespeed = 0;
		if dir != xscale
		{
			mach2 = 0;
			dir = xscale;
			movespeed = 0;
		}
		if move == -xscale
		{
			mach2 = 0;
			movespeed = 0;
			momemtum = false;
		}
		if move != 0
			xscale = move;
	}
	image_speed = 0.5;
	if animation_end()
	{
		vsp += 14;
		state = states.freefall;
		metal = 0;
	}
}
