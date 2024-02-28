function scr_player_parry()
{
	hsp = movespeed * xscale;
	sprite_index = spr_player_parry;
	if !instance_exists(obj_mach3effect)
		instance_create(x, y, obj_mach3effect);
	if movespeed < 0 && grounded
		movespeed += 0.2;
	if movespeed > 0
		movespeed = 0;
	if sprite_index = spr_player_parry && floor(image_index) >= (image_number - 1)
	{
		state = tauntstoredstate;
		movespeed = tauntstoredmovespeed;
	}
	image_speed = 0.35;
}
