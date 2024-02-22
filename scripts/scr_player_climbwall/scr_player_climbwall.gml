function scr_player_climbwall()
{
	if windingAnim < 200
		windingAnim++;
	suplexmove = false;
	vsp = -wallspeed;
	if wallspeed > 0
		wallspeed -= 0.4;
	crouchslideAnim = true;
	sprite_index = spr_climbwall;
	if !key_attack
	{
		state = states.jump;
		sprite_index = spr_fall;
	}
	if !scr_solid(x + xscale, y, true)
	{
		instance_create(x, y, obj_jumpdust);
		vsp = 0;
		if (scr_slope_ext(x + xscale, y))
		{
			if wallspeed < 12
			{
				state = states.mach2;
				movespeed = wallspeed;
			}
			else if (wallspeed >= 12)
			{
				state = states.mach3;
				movespeed = wallspeed;
				sprite_index = spr_player_mach4;
			}
			else
			{
				state = states.normal;
				vsp = -wallspeed;
			}
		}
		else if mach2 < 100
			state = states.mach2;
		else if (mach2 >= 100)
		{
			state = states.mach3;
			sprite_index = spr_player_mach4;
		}
		else
		{
			state = states.normal;
			vsp = -wallspeed;
		}
	}
	if grounded && wallspeed <= 0 || wallspeed <= 0
	{
		state = states.jump;
		sprite_index = spr_fall;
	}
	image_speed = 0.6;
	if !instance_exists(obj_cloudeffect)
		instance_create(x, y + 43, obj_cloudeffect);
	if key_jump && key_attack
	{
		if mach2 >= 100
		{
			mach2 = 100;
			instance_create(x, y, obj_jumpdust);
			vsp = -9;
			sprite_index = spr_player_mach4;
			state = states.mach3;
			if global.starrmode
				state = states.mach2;
			xscale *= -1;
		}
		else
		{
			sprite_index = spr_player_mach2jump;
			mach2 = 35;
			instance_create(x, y, obj_jumpdust);
			vsp = -9;
			state = states.mach2;
			xscale *= -1;
		}
	}
}
