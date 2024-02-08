function scr_player_knightpepattack()
{
	alarm[5] = 2;
	alarm[7] = 60;
	hurted = true;
	if (instance_exists(obj_swordhitbox))
	{
		if (obj_swordhitbox.bumpeffect == 0)
			hsp = xscale * movespeed;
		else
			hsp = -xscale * movespeed;
	}
	if (movespeed >= 0)
		movespeed -= 0.2;
	if (animation_end())
	{
		image_index = 0;
		sprite_index = spr_knightpep_idle;
		state = states.knightpep;
	}
	image_speed = 0.35;
}
