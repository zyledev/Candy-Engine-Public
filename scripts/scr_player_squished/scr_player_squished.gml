function scr_player_squished()
{
	hsp = 0;
	vsp = 0;
	move = 0;
	movespeed = 0;
	if (animation_end() && sprite_index == spr_player_squished)
		state = states.normal;
}
