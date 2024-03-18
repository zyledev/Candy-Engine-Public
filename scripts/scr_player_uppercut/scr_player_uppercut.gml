function scr_player_uppercut()
{
	if !instance_exists(obj_mach3effect)
		instance_create(x, y, obj_mach3effect);
	image_speed = 0.35;
	if sprite_index = spr_player_uppercutbegin && animation_end()
	{
		sprite_index = spr_player_uppercutend;
		image_index = 0;
	}
	if scr_solid(x + sign(hsp), y) && xscale = 1 && move = 1 && !place_meeting(x + 1, y, obj_slope)
		movespeed = 0;
	if scr_solid(x + sign(hsp), y) && xscale = -1 && move = -1 && !place_meeting(x - 1, y, obj_slope)
		movespeed = 0;
	move = key_left + key_right;
	if move = 0
		hsp = xscale * movespeed;
	else
		hsp = move * movespeed;
	if move != 0
	{
		xscale = move;
		if movespeed < 4
			movespeed += 0.4;
		if movespeed > 4
			movespeed = 4;
	}
	if move = 0
	{
		if movespeed > 0
			movespeed -= 0.3;
	}
	if !instance_exists(obj_dashcloud) && grounded
	{
		with instance_create_depth(x, y, 0, obj_dashcloud)
			image_xscale = other.xscale;
	}
	if grounded && vsp > 0 && !place_meeting(x, y + 1, obj_destructibles)
	{
		scr_sound(sound_step);
		landAnim = true;
		input_buffer_secondjump = 0;
		state = states.normal;
		jumpAnim = true;
		jumpstop = false;
		image_index = 0;
		freefallstart = false;
		instance_create_depth(x, y, 0, obj_landcloud);
	}
}
