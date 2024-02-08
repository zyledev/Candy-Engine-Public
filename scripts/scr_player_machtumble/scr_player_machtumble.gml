function scr_player_machtumble()
{
	if (sprite_index == spr_player_machfallback)
	{
		move = 0;
		dir = 0;
		image_speed = 0.5;
		vsp += 0.2;
	}
	if (animation_end() && sprite_index == spr_player_machfallback)
	{
		movespeed = 12;
		state = states.mach3;
		sprite_index = spr_player_mach4;
	}
	if (scr_solid(x + xscale, y) && !scr_slope_ext(x + sign(hsp), y) && !place_meeting(x + sign(hsp), y, obj_destructibles))
	{
		movespeed = 0;
		state = states.normal;
	}
}
