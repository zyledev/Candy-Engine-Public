function scr_enemy_walk()
{
	if grounded || grounded && !place_meeting(x, y, obj_platform) || !place_meeting(x, y, obj_cottonplatform)
	{
		if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
			hsp = image_xscale * movespeed;
		else if (place_meeting(x, y + 1, obj_railh))
			hsp = (image_xscale * movespeed) - 5;
		else if (place_meeting(x, y + 1, obj_railh2))
			hsp = (image_xscale * movespeed) + 5;
		else
			hsp = 0;
	}
	if object_index != obj_charcherry
	{
		if global.stylethreshold > 0
			movespeed = global.stylethreshold / 0.8;
	}
	if !roaming
	{
		if grounded || grounded && !place_meeting(x, y, obj_platform) || !place_meeting(x, y, obj_cottonplatform)
		{
			hsp = 0;
			state = baddiestates.idle;
			image_index = 0;
		}
	}
	if grounded || grounded && !place_meeting(x, y, obj_platform) || !place_meeting(x, y, obj_cottonplatform)
		sprite_index = walkspr;
	else
	{
		sprite_index = idlespr;
		state = baddiestates.idle;
	}
	image_speed = 0.35;
	if scr_solid(x + 1, y) && image_xscale == 1 || scr_solid(x - 1, y) && image_xscale = -1 || place_meeting(x + hsp, y, obj_hallway)
	{
		if !place_meeting(x + sign(hsp), y, obj_slope)
		{
			if object_index == obj_knight
			{
				state = baddiestates.turn;
				hsp = 0;
			}
			else
				image_xscale *= -1;
		}
	}
	if (!(scr_solid(x + (image_xscale * 15), y + 31) || place_meeting(x + (image_xscale * 15), y + 31, obj_platform) || place_meeting(x + (image_xscale * 15), y + 31, obj_cottonplatform)))
	{
		if (grounded && movespeed > 0)
		{
			if (object_index == obj_knight)
			{
				state = baddiestates.turn;
				hsp = 0;
			}
			else
				image_xscale *= -1;
		}
	}
	if (!(grounded || ((grounded && !place_meeting(x, y, obj_platform)) || !place_meeting(x, y, obj_cottonplatform))) && hsp < 0)
		hsp += 0.1;
	else if (!(grounded || ((grounded && !place_meeting(x, y, obj_platform)) || !place_meeting(x, y, obj_cottonplatform))) && hsp > 0)
		hsp -= 0.1;
}
