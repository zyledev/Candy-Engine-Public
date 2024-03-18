function scr_enemy_slugparry()
{
	hsp = movespeed * image_xscale;
	sprite_index = spr_sluggy_parry;
	if movespeed < 0 && grounded
		movespeed += 0.2;
	if movespeed > 0
		movespeed = 0;
	image_speed = 0.35;
	if floor(image_index) = image_number - 1 && sprite_index = spr_sluggy_parry
	{
		state = baddiestates.walk;
		sprite_index = spr_sluggy;
		movespeed = 1;
	}
}
