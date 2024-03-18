if (other.state != states.bombpep && other.Dashpad_buffer <= 0)
{
	with (other)
	{
		if (state != states.Sjumpprep && state != states.crouch && sprite_get_bbox_bottom(mask_index) <= other.bbox_bottom)
		{
			movespeed = max(movespeed, 12);
			if (character == "P")
			{
				state = states.mach3;
				Dashpad_buffer = 10;
				sprite_index = spr_player_dashpad;
				xscale = sign(other.image_xscale);
				if (!scr_solid(x, other.y))
					y = other.y;
				image_index = 0;
				vsp = 3;
				flash = true;
			}
			if (character == "N")
			{
				state = states.machpizzano;
				Dashpad_buffer = 10;
				xscale = sign(other.image_xscale);
				image_index = 0;
				flash = true;
			}
		}
	}
}
