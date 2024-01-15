function scr_player_coneboy_dive()
{
	hsp = xscale * movespeed;
	if (!grounded)
		movespeed = 10;
	if (instance_place(x + xscale, y, obj_slope) && xscale == 1 && instance_place(x + xscale, y, obj_slope).image_xscale < 1)
	{
		if (movespeed < 12)
			movespeed += 0.25;
	}
	if (instance_place(x + xscale, y, obj_slope) && xscale == -1 && instance_place(x + xscale, y, obj_slope).image_xscale >= 1)
	{
		if (movespeed < 12)
			movespeed += 0.25;
	}
	if (instance_place(x + xscale, y, obj_slope) && xscale == 1 && instance_place(x + xscale, y, obj_slope).image_xscale >= 1)
		movespeed -= 0.25;
	if (instance_place(x + xscale, y, obj_slope) && xscale == -1 && instance_place(x + xscale, y, obj_slope).image_xscale < 1)
		movespeed -= 0.25;
	if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
		instance_create(x, y, obj_slidecloud);
	image_speed = 0.35;
	if (place_meeting(x, y + sign(vsp), obj_solid))
		movespeed -= 0.2;
	if (movespeed <= 0 && grounded)
		state = states.normal;
	if (place_meeting(x + 1, y, obj_solid) || place_meeting(x - 1, y, obj_solid))
	{
		sprite_index = spr_player_mach3hitwall;
		state = states.bump;
		hsp = -2.5;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
	}
}
