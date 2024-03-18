function scr_player_minecart()
{
	if grounded && sprite_index == spr_player_minecartfall
	{
		if movespeed >= 16
			sprite_index = spr_player_minecartfastland;
		else
			sprite_index = spr_player_minecartland;
		image_index = 0;
	}
	move = key_left + key_right;
	hsp = xscale * movespeed;
	if move == 0 && movespeed < 5
		movespeed += 0.1;
	if move != 0 && move != xscale && movespeed > 1
		movespeed -= 0.05;
	if move != 0 && move = xscale && movespeed < 16
		movespeed += 0.1;
	if !grounded && sprite_index != spr_player_minecartjump
		sprite_index = spr_player_minecartfall;
	if movespeed >= 16 && !instance_exists(obj_chargeeffect)
		instance_create(x + (32 * xscale), y, obj_chargeeffect);
	if place_meeting(x, y + sign(vsp), obj_solid)
	{
		movespeed -= 0.4;
		if movespeed <= 0
		{
			instance_create(x, y - 14, obj_dummycart);
			state = states.machslide;
			vsp = -8;
			movespeed = 6;
			sprite_index = spr_player_hurtroll;
		}
	}
	if place_meeting(x - 1, y, obj_solid)
	{
		sprite_index = spr_player_mach3hitwall;
		state = states.bump;
		hsp = 2.5;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
		instance_create(x, y, obj_bombexplosionharmless);
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 0;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 1;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 2;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 3;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 4;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 5;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
	}
	if place_meeting(x + 1, y, obj_solid)
	{
		sprite_index = spr_player_mach3hitwall;
		state = states.bump;
		hsp = -2.5;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
		instance_create(x, y, obj_bombexplosionharmless);
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 0;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 1;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 2;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 3;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 4;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_minecartdebris;
			image_index = 5;
			vsp = floor(random_range(-5, -9));
			hsp = floor(random_range(-5, 7));
		}
	}
	if key_jump && !place_meeting(x, y + sign(vsp), obj_solid) && grounded
	{
		vsp = -8;
		image_index = 0;
		sprite_index = spr_player_minecartjump;
	}
	if sprite_index = spr_player_minecartjump && animation_end()
		sprite_index = spr_player_minecartfall;
	if sprite_index = spr_player_minecartland && animation_end()
		sprite_index = spr_player_minecart;
	if sprite_index = spr_player_minecartfastland && animation_end()
		sprite_index = spr_player_minecartfast;
}
