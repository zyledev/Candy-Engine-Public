function scr_rocketfist_pizzano()
{
	if sprite_index = spr_pizzano_sjumpprepside
	{
		vsp = 0;
		hsp = 0;
		move = 0;
		if sprite_index = spr_pizzano_sjumpprepside && animation_end()
		{
			image_index = 0;
			sprite_index = spr_pizzano_sjumpside;
		}
	}
	if sprite_index != spr_pizzano_sjumpprepside
	{
		move = key_left + key_right;
		hsp = xscale * movespeed;
		vsp = 0;
		if move = 0 && movespeed < 5
			movespeed += 0.1;
		if move != 0 && move != xscale && movespeed > 1
			movespeed -= 0.05;
		if move != 0 && move = xscale && movespeed < 24
			movespeed += 0.1;
		if key_jump
		{
			state = states.jump;
			sprite_index = spr_jump;
			vsp = -5;
		}
		if scr_solid(x + 1, y) && image_xscale = 1
		{
			state = states.bump;
			sprite_index = spr_player_mach3hitwall;
		}
		if scr_solid(x - 1, y) && image_xscale = -1
		{
			state = states.bump;
			sprite_index = spr_player_mach3hitwall;
		}
	}
}
