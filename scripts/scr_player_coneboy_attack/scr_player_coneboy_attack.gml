function scr_player_coneboy_attack()
{
	sprite_index = spr_coneboy_attack;
	hsp = 0;
	movespeed = 0;
	if (!instance_exists(obj_coneattackhitbox))
		instance_create(x, y, obj_coneattackhitbox);
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_coneboy_attack)
	{
		state = states.normal;
		sprite_index = spr_idle;
	}
}
