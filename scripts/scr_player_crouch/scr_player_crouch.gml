function scr_player_crouch()
{
	move = key_left + key_right;
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
		hsp = move * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
		hsp = (move * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
		hsp = (move * movespeed) + 5;
	mask_index = spr_crouchmask;
	turning = false;
	movespeed = 4;
	if (!grounded && !key_jump)
	{
		jumpAnim = false;
		state = states.crouchjump;
		movespeed = 4;
		crouchAnim = true;
		image_index = 0;
	}
	if (key_jump && grounded && !scr_solid(x, y - 16) && !scr_solid(x, y - 32))
	{
		scr_sound(sound_jump);
		vsp = -8;
		state = states.crouchjump;
		movespeed = 4;
		image_index = 0;
		crouchAnim = true;
		jumpAnim = true;
	}
	if (grounded && !key_down && !scr_solid(x, y - 16) && !scr_solid(x, y - 32) && !key_jump)
	{
		state = states.normal;
		movespeed = 0;
		crouchAnim = true;
		jumpAnim = true;
		image_index = 0;
		mask_index = spr_player_mask;
	}
	if (!crouchAnim)
	{
		if (move == 0)
		{
			if (shotgunAnim == 0)
				sprite_index = spr_crouch;
			else
				sprite_index = spr_shotgun_duck;
		}
		if (move != 0)
			sprite_index = spr_crawl;
	}
	if (!crouchAnim)
	{
		if (move == 0)
		{
			if (shotgunAnim == 0)
				sprite_index = spr_couchstart;
			else
				sprite_index = spr_shotgun_goduck;
			if (animation_end())
				crouchAnim = false;
		}
	}
	if (move != 0)
	{
		xscale = move;
		crouchAnim = false;
	}
	if (key_taunt2 && !scr_solid(x, y - 16) && !scr_solid(x, y - 32))
	{
		taunttimer = 20;
		tauntstoredmovespeed = movespeed;
		tauntstoredsprite = sprite_index;
		tauntstoredstate = state;
		state = states.backbreaker;
		image_index = random_range(0, 6);
		sprite_index = spr_player_taunt;
		instance_create(x, y, obj_taunteffect);
	}
	image_speed = 0.3;
}
