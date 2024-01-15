function scr_player_machfallback()
{
	if (sprite_index == (534 && floor(image_index) == (image_number - 1)))
	{
		if (movespeed < 12)
		{
			state = states.mach2;
			movespeed = 8;
		}
		if (movespeed > 12)
		{
			state = states.mach3;
			movespeed = 14;
		}
	}
}
