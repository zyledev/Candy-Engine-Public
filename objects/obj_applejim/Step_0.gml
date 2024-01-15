switch (state)
{
	case baddiestates.idle:
		scr_enemy_idle();
		break;
	case baddiestates.turn:
		scr_enemy_turn();
		break;
	case baddiestates.walk:
		scr_enemy_walk();
		break;
	case baddiestates.land:
		scr_enemy_land();
		break;
	case baddiestates.hit:
		scr_enemy_hit();
		break;
	case baddiestates.stun:
		scr_enemy_stun();
		break;
	case baddiestates.pizzagoblinthrow:
		scr_pizzagoblin_throw();
		break;
	case baddiestates.applejimbash:
		scr_applejim_bash();
		break;
}
bashcooldown--;
if (state == baddiestates.walk)
	movespeed = 0;
if (state == baddiestates.applejimbash)
	movespeed = 5;
if (bashcooldown == 0)
{
	sprite_index = spr_applejim_charge;
	state = baddiestates.applejimbash;
	bashcooldown = 200;
}
if (state == baddiestates.stun && stunned > 40 && birdcreated == 0)
{
	birdcreated = 1;
	with (instance_create(x, y, obj_enemybird))
		ID = other.id;
}
if (hp == 0)
	instance_destroy();
if (state != baddiestates.stun)
	birdcreated = false;
if (flash == 1 && alarm[2] <= 0)
	alarm[2] = 0.15 * room_speed;
if (state != baddiestates.grabbed)
	depth = 0;
instance_destroy(obj_baddiethrow);
instance_destroy(obj_swordhitbox);
instance_destroy(obj_slaphitbox);
