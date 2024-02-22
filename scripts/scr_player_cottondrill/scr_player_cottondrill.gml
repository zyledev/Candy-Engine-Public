function scr_player_cottondrill()
{
	image_speed = 0.35;
	if dir != xscale
	{
		dir = xscale;
		movespeed = 0;
	}
	move = key_left + key_right;
	if move != 0
		xscale = move;
	hsp = 0;
	sprite_index = spr_cotton_drill;
	if scr_solid(x, y + 1)
	{
		state = states.cotton;
		sprite_index = spr_cotton_land;
		vsp = 0;
		movespeed = 0;
		image_index = 0;
	}
	if key_slap2
	{
		state = states.cotton;
		vsp = -5;
		movespeed = 5;
		grav = 0.025;
		image_index = 0;
		sprite_index = spr_cotton_jump;
		instance_create(x, y, obj_highjumpcloud2);
		scr_sound(sound_jump);
	}
}
