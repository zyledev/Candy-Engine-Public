function scr_enemy_land()
{
	if vsp > 0
		hsp = 0;
	sprite_index = landspr;
	image_speed = 0.35;
	if animation_end()
	{
		sprite_index = idlespr;
		state = baddiestates.idle;
		image_index = 0;
	}
}
