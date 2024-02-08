function scr_player_shoulder()
{
	movespeed = 0;
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = true;
	if (floor(image_index) == (image_number - 1))
		state = states.normal;
	sprite_index = spr_player_shoulder;
	image_speed = 0.35;
}
