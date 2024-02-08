function scr_player_backkick()
{
	movespeed = 0;
	mach2 = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = false;
	moveAnim = true;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	if (floor(image_index) == (image_number - 1))
		state = states.normal;
	sprite_index = spr_backkick;
	image_speed = 0.35;
}
