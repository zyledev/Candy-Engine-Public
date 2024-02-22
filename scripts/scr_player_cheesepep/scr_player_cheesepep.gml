function scr_player_cheesepep()
{
	key_particles = 0;
	mach2 = 0;
	alarm[5] = 2;
	alarm[7] = 60;
	hurted = true;
	if key_jump
		input_buffer_jump = 0;
	if !key_jump2 && !jumpstop && vsp < 0.5 && !stompAnim
	{
		vsp /= 2;
		jumpstop = true;
	}
	if grounded && vsp > 0
		jumpstop = false;
	if sprite_index = spr_cheesepep_walk || sprite_index = spr_cheesepep_jump || sprite_index = spr_cheesepep_fall || sprite_index = spr_cheesepep_idle
	{
		move = key_left + key_right;
		if !place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2)
			hsp = move * movespeed;
		else if place_meeting(x, y + 1, obj_railh)
			hsp = (move * movespeed) - 5;
		else if place_meeting(x, y + 1, obj_railh2)
			hsp = (move * movespeed) + 5;
	}
	else if grounded
	{
		if !place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2)
			hsp = 0;
		else if place_meeting(x, y + 1, obj_railh)
		{
			hsp = -5;
			move = 0;
		}
		else if place_meeting(x, y + 1, obj_railh2)
		{
			hsp = 5;
			move = 0;
		}
	}
	if place_meeting(x + sign(hsp), y, obj_railv)
	{
		grav = 0;
		state = states.cheesepepstick;
	}
	if place_meeting(x, y - 1, obj_railh) && vsp < 0
	{
		grav = 0;
		state = states.cheesepepstick;
	}
	if scr_solid(x, y - 1) && vsp < 0
		vsp = grav;
	if dir != xscale
	{
		dir = xscale;
		movespeed = 0;
	}
	if grounded && move != 0 && sprite_index = spr_cheesepep_idle
		sprite_index = spr_cheesepep_walk;
	else if grounded && move == 0 && sprite_index = spr_cheesepep_walk
		sprite_index = spr_cheesepep_idle;
	if input_buffer_jump < 8 && vsp > 0 && grounded && (sprite_index = spr_cheesepep_idle || sprite_index = spr_cheesepep_walk)
	{
		scr_sound(sound_step2);
		image_index = 0;
		sprite_index = spr_cheesepep_jumpstart;
	}
	if animation_end() && sprite_index = spr_cheesepep_jumpstart
	{
		vsp = -11;
		if key_right
			hsp = 4;
		if -key_left
			hsp = -4;
		sprite_index = spr_cheesepep_jump;
	}
	if (animation_end() && sprite_index = spr_cheesepep_jump) || (!grounded && sprite_index != spr_cheesepep_jump) || (vsp > 0 && sprite_index = spr_cheesepep_jump)
		sprite_index = spr_cheesepep_fall;
	if (sprite_index = spr_cheesepep_fall && grounded)
	{
		image_index = 0;
		instance_create(x, y, obj_landcloud);
		freefallstart = false;
		momemtum = false;
		instance_create(x, y, obj_landcloud);
		sprite_index = spr_cheesepep_land;
	}
	if animation_end() && sprite_index == spr_cheesepep_land
		sprite_index = spr_cheesepep_idle;
	if move != 0
		xscale = move;
	if move != 0
	{
		if movespeed < 6
			movespeed += 0.5;
		else if movespeed = 6
			movespeed = 6;
	}
	else
		movespeed = 0;
	if move != 0
	{
		if movespeed < 1
			image_speed = 0.15;
		else if movespeed > 1 && movespeed < 4
			image_speed = 0.35;
		else
			image_speed = 0.6;
	}
	else
		image_speed = 0.35;
	if animation_end() && sprite_index = spr_cheesepep_intro
		sprite_index = spr_cheesepep_idle;
	if !instance_exists(obj_cloudeffect) && !place_meeting(x, y, obj_water2) && grounded && move != 0 && floor(image_index) = 4 || floor(image_index) = 10
		instance_create(x, y + 43, obj_cloudeffect);
	if move != 0 && floor(image_index) = 3 || floor(image_index) = 8 && !steppy
	{
		scr_sound(7); // this does NOT look like an mu_mineshaft moment
		steppy = true;
	}
	if move != 0 && floor(image_index) != 3 && floor(image_index) != 8
		steppy = false;
}
