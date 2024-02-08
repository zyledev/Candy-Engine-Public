function scr_player_freefallland()
{
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = false;
	machhitAnim = false;
	movespeed = 0;
	facehurt = 1;
	start_running = 1;
	alarm[4] = 14;
	vsp = 0;
	hsp = 0;
	if (floor(image_index) == (image_number - 1))
	{
		state = states.normal;
		sprite_index = spr_idle;
		metal = 0;
	}
	if (fallinganimation > 40)
		sprite_index = spr_player_freefallland;
	if (fallinganimation < 40)
		sprite_index = spr_player_bodyslamland;
	image_speed = 0.35;
}
