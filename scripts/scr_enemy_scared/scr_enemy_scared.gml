function scr_enemy_scared()
{
	if object_index = obj_gumslime
	{
		hsp = 0;
		movespeed = 0;
		if floor(image_index) = image_number - 1
		{
			state = baddiestates.walk;
			sprite_index = spr_gumslime_walk;
			movespeed = 1;
		}
	}
	if object_index = obj_cottonwitch
	{
		hsp = 0;
		movespeed = 0;
		if floor(image_index) = image_number - 1
		{
			state = baddiestates.walk;
			sprite_index = spr_cottonwitch_walk;
			movespeed = 1;
		}
	}
	if object_index = obj_knight
	{
		hsp = 0;
		movespeed = 0;
		if floor(image_index) = image_number - 1
		{
			state = baddiestates.walk;
			sprite_index = spr_knight_walk;
			movespeed = 1;
		}
	}
	if object_index = obj_swedishfish
	{
		hsp = 0;
		movespeed = 0;
		if floor(image_index) == image_number - 1
		{
			state = baddiestates.walk;
			sprite_index = spr_swed;
			movespeed = 0;
		}
	}
	if object_index = obj_crackerkicker
	{
		hsp = 0;
		movespeed = 0;
		if floor(image_index) = image_number - 1
		{
			state = baddiestates.walk;
			sprite_index = spr_crackerkicker_walk;
			movespeed = 1;
		}
	}
	if object_index = obj_charger
	{
		hsp = 0;
		movespeed = 0;
		if floor(image_index) = image_number - 1
		{
			state = baddiestates.walk;
			sprite_index = spr_banana_idle;
			movespeed = 0;
		}
	}
	if object_index = obj_googlyjuice
	{
		hsp = 0;
		movespeed = 0;
		if floor(image_index) = image_number - 1
		{
			state = baddiestates.walk;
			sprite_index = spr_juicewalk;
			movespeed = 0;
		}
	}
	image_speed = 0.3;
}
