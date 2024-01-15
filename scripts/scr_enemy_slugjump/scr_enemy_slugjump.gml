function scr_enemy_slugjump()
{
	movespeed = hsp;
	hsp *= image_xscale;
	if (sprite_index == spr_sluggy_jumpstart || sprite_index == spr_sluggy_land)
	{
		hsp = 0;
		vsp = 0;
		movespeed = 0;
	}
	else
		movespeed = 2;
	if (floor(image_index) >= (image_number - 1) && sprite_index == spr_sluggy_jumpstart)
	{
		sprite_index = spr_sluggy_jump;
		vsp = -12;
		grounded = false;
	}
	if (scr_solid(x + hsp, y))
	{
		state = baddiestates.stun;
		stunned = 100;
	}
	if (sprite_index == spr_sluggy_jump)
	{
		movespeed = 1;
		if (image_xscale == 1)
			hsp = 2;
		if (image_xscale == -1)
			hsp = -2;
	}
	if (scr_solid(x - 1, y) && image_xscale == -1 && !place_meeting(x - 1, y, obj_slope) && !place_meeting(x - 1, y, obj_destructibles) && (grounded || place_meeting(x + sign(hsp), y, obj_railv)))
		image_xscale = 1;
	if (scr_solid(x + 1, y) && image_xscale == 1 && !place_meeting(x - 1, y, obj_slope) && !place_meeting(x - 1, y, obj_destructibles) && (grounded || place_meeting(x + sign(hsp), y, obj_railv)))
		image_xscale = -1;
	if (sprite_index == spr_sluggy_jump && grounded)
		sprite_index = spr_sluggy_land;
	if (sprite_index == spr_sluggy_land && floor(image_index) >= (image_number - 1))
	{
		state = baddiestates.walk;
		sprite_index = spr_sluggy;
		movespeed = 1;
		hitboxcreate = true;
	}
}
