function scr_player_punch()
{
	movespeed = 0;
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = true;
	if animation_end()
		state = states.normal;
	sprite_index = spr_punch;
	image_speed = 0.35;
}
