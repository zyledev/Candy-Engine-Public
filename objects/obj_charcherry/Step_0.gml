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
	case baddiestates.cherrywait:
		scr_enemy_cherrywait();
		break;
	case baddiestates.cherrywait2: // charcherry breaks without this LOL
		scr_enemy_cherrywait();
		break;
	case baddiestates.cherry:
		scr_enemy_charcherry();
		break;
}
if (state == baddiestates.stun && stunned > 40 && !birdcreated)
{
	birdcreated = true;
	with (instance_create(x, y, obj_enemybird))
		ID = other.id;
}
if (state != baddiestates.stun)
	birdcreated = false;
if (flash && alarm[2] <= 0)
	alarm[2] = 0.15 * room_speed;
if (sprite_index != spr_charcherry_wait && !global.panic)
	sprite_index = spr_charcherry_wait;
if (state == baddiestates.stun || (state = baddiestates.cherrywait && global.panic))
	instance_destroy();
