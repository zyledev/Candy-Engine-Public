function scr_player_throw()
{
	movespeed = 0;
	mach2 = 0;
	if grounded
		hsp = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = true;
	sprite_index = spr_punch;
	if animation_end()
		state = states.normal;
	image_speed = 0.35;
}
