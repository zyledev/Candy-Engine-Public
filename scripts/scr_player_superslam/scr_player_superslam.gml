function scr_player_superslam()
{
	if dir != xscale
	{
		dir = xscale;
		movespeed = 0;
	}
	move = key_left + key_right;
	if move != 0
		xscale = move;
	hsp = move * movespeed;
	if move != 0
		movespeed = 5;
	else
		movespeed = 0;
	mach2 = 0;
	if sprite_index = spr_player_piledriverstart && animation_end()
	{
		sprite_index = spr_piledriver;
		image_index = 0;
	}
	if sprite_index = spr_player_piledriverstart || sprite_index = spr_piledriver
	{
		move = key_left + key_right;
		hsp = move * movespeed;
	}
	else
	{
		move = 0;
		hsp = 0;
	}
	if (sprite_index = spr_player_piledriverstart && grounded && !place_meeting(x, y + 1, obj_destructibles) && vsp > 0) || (sprite_index = spr_piledriver && grounded && !place_meeting(x, y + 1, obj_destructibles) && vsp > 0)
	{
		sprite_index = spr_piledriverland;
		jumpAnim = true;
		jumpstop = false;
		image_index = 0;
		with obj_camera
		{
			shake_mag = 20;
			shake_mag_acc = 40 / room_speed;
		}
		hsp = 0;
		bounce = false;
		with instance_create(x, y + 35, obj_bangeffect)
			xscale = obj_player.xscale;
		instance_create(x, y, obj_landcloud);
		freefallstart = false;
		with obj_baddie
		{
			if point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0))
			{
				image_index = 0;
				vsp = -7;
				hsp = 0;
			}
		}
	}
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	machslideAnim = true;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = true;
	if sprite_index = spr_piledriverland && animation_end()
	{
		vsp = -9;
		state = states.jump;
		if character = "P"
			sprite_index = spr_player_machfreefall;
		if character = "DEEZNUTS"
			sprite_index = spr_playerN_jump;
	}
	if move != 0
	{
		if movespeed < 6
			movespeed += 0.25;
		else if floor(movespeed) = 5
			movespeed = 6;
	}
	else
		movespeed = 0;
	if movespeed > 6
		movespeed -= 0.1;
	if character = "DEEZNUTS" && move != 0
		xscale = move;
	image_speed = 0.35;
}
