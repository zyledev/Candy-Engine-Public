function scr_player_keyget()
{
	hsp = 0;
	vsp = 0;
	image_speed = 0.35;
	movespeed = 0;
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = true;
	machhitAnim = false;
	sprite_index = spr_keyget;
	if animation_end()
	{
		global.keyget = false;
		state = states.normal;
		image_index = 0;
	}
	metal = 0;
}
