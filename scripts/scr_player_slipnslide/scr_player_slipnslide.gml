function scr_player_slipnslide()
{
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = false;
	machhitAnim = false;
	hsp = xscale * movespeed;
	if (!place_meeting(x, y + 1, obj_slope))
	{
		if (movespeed >= 0)
			movespeed -= 0.2;
	}
	else
		movespeed += 0.2;
	machhitAnim = false;
	crouchslideAnim = true;
	if (movespeed == 0 && !scr_slope())
	{
		state = states.normal;
		movespeed = 0;
		mach2 = 0;
		image_index = 0;
	}
	if (scr_solid(x + 1, y) && xscale == 1)
	{
		state = states.bump;
		hsp = -2;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
		instance_create(x + 10, y + 10, obj_bumpeffect);
	}
	if (scr_solid(x - 1, y) && xscale == -1)
	{
		state = states.bump;
		hsp = 2;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
		instance_create(x - 10, y + 10, obj_bumpeffect);
	}
	sprite_index = spr_player_slipnslide;
	image_speed = 0.35;
	if (!instance_exists(obj_slidecloud) && grounded && movespeed > 1.5)
		instance_create(x, y, obj_slidecloud);
}
