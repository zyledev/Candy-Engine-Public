function scr_player_puddle()
{
	if (!grounded && image_xscale == -1)
		hsp -= 0.2;
	if (sprite_index == spr_player_slipnslidestart && floor(image_index) >= (image_number - 1))
		sprite_index = spr_player_slipnslide;
	if (grounded && vsp > 0)
	{
		sprite_index = spr_player_slipnslideend;
		hsp = 0;
	}
	if (sprite_index == spr_player_slipnslideend && floor(image_index) >= (image_number - 1))
		state = states.normal;
}
