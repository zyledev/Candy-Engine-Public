function scr_player_grab()
{
	grav = 0.5;
	move = key_left + key_right;
	if (grounded)
	{
		if (dir != xscale && sprite_index != spr_player_swingding)
		{
			dir = xscale;
			movespeed = 2;
			facehurt = 0;
		}
		jumpstop = false;
		anger = 100;
		if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
			hsp = move * movespeed;
		else if (place_meeting(x, y + 1, obj_railh))
			hsp = (move * movespeed) - 5;
		else if (place_meeting(x, y + 1, obj_railh2))
			hsp = (move * movespeed) + 5;
		if (move != 0)
		{
			if (movespeed < 6)
				movespeed += 0.5;
			else if (floor(movespeed) == 6)
				movespeed = 6;
		}
		else
			movespeed = 0;
		if (movespeed > 6)
			movespeed -= 0.1;
		if (move != 0 && sprite_index != spr_player_swingding)
			xscale = move;
		if (move != 0)
		{
			if (movespeed < 3 && move != 0)
				image_speed = 0.35;
			else if (movespeed > 3 && movespeed < 6)
				image_speed = 0.45;
			else
				image_speed = 0.6;
		}
		else
			image_speed = 0.35;
	}
	if (!grounded)
	{
		if (dir != xscale && sprite_index != spr_player_swingding)
		{
			dir = xscale;
			movespeed = 2;
			facehurt = 0;
		}
		if (move != xscale)
			movespeed = 2;
		if (momemtum == 0)
			hsp = move * movespeed;
		else
			hsp = xscale * movespeed;
		if (move != xscale && momemtum == 1 && movespeed != 0)
			movespeed -= 0.05;
		if (movespeed == 0)
			momemtum = 0;
		if (move != 0 && movespeed < 6)
			movespeed += 0.5;
		if (movespeed > 6)
			movespeed -= 0.5;
		if ((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1))
			movespeed = 0;
		if (dir != xscale && sprite_index != spr_player_swingding)
		{
			dir = xscale;
			movespeed = 2;
			facehurt = 0;
		}
		if (move == -xscale)
		{
			mach2 = 0;
			momemtum = 0;
		}
		landAnim = true;
		if (!key_jump2 && !jumpstop && vsp < 0.5 && !stompAnim)
		{
			vsp /= 10;
			jumpstop = true;
		}
		if (ladderbuffer > 0)
			ladderbuffer--;
		if (scr_solid(x, y - 1) && !jumpstop && jumpAnim)
		{
			vsp = grav;
			jumpstop = true;
		}
		if (move != 0 && sprite_index != spr_player_swingding)
			xscale = move;
	}
	if (key_jump)
		input_buffer_jump = 0;
	if (grounded && input_buffer_jump < 8 && !key_down && !key_attack && vsp > 0 && sprite_index != spr_player_swingding)
	{
		scr_sound(sound_jump);
		sprite_index = spr_player_haulingjump;
		instance_create(x, y, obj_highjumpcloud2);
		vsp = -11;
		image_index = 0;
	}
	if (grounded && move != 0)
		sprite_index = spr_player_haulingwalk;
	else if (grounded && move == 0)
		sprite_index = spr_player_haulingidle;
	if (sprite_index == spr_player_haulingstart && animation_end())
		sprite_index = spr_player_haulingidle;
	if ((sprite_index == spr_player_haulingjump && animation_end()) || (!grounded && (sprite_index == spr_player_haulingwalk || sprite_index == spr_player_haulingidle)))
		sprite_index = spr_player_haulingfall;
	if (grounded && vsp > 0 && (sprite_index == spr_player_haulingfall || sprite_index == spr_player_haulingjump))
	{
		sprite_index = spr_player_haulingland;
		movespeed = 2;
	}
	if (sprite_index == spr_player_haulingland && animation_end())
		sprite_index = spr_player_haulingidle;
	if (move != 0 && move != lastmove && swingdingbuffer < 300)
	{
		lastmove = move;
		swingdingbuffer += 50;
	}
	if (swingdingbuffer > 0)
		swingdingbuffer -= 1;
	if (key_slap2)
	{
		if (move != 0)
			move = xscale;
		state = states.finishingblow;
		if (sprite_index == spr_player_swingding)
			sprite_index = spr_player_swingdingend;
		else if (!key_up)
			sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4);
		else if (key_up)
			sprite_index = spr_player_uppercutfinishingblow;
		image_index = 0;
		hsp = 0;
		movespeed = 0;
	}
	if (key_attack2)
	{
		sprite_index = spr_player_swingding;
		movespeed = 10;
		state = states.charge;
		instance_create(x, y, obj_jumpdust);
	}
	if (key_down && !grounded)
	{
		sprite_index = spr_player_piledriverstart;
		vsp = -6;
		state = states.superslam;
		image_index = 0;
		image_speed = 0.35;
	}
	if (!instance_exists(obj_cloudeffect) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
		instance_create(x, y + 43, obj_cloudeffect);
	if (key_down && grounded)
	{
		state = states.crouch;
		landAnim = false;
		crouchAnim = true;
		image_index = 0;
		idle = 0;
	}
	if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && !steppy)
		steppy = true;
	if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
		steppy = false;
	if (sprite_index != spr_player_swingding)
		image_speed = 0.35;
	else
		image_speed = swingdingbuffer / 600;
}
