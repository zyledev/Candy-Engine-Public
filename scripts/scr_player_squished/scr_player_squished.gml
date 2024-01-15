function scr_player_squished()
{
	hsp = 0;
	vsp = 0;
	move = 0;
	movespeed = 0;
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_squished)
		state = states.normal;
}
