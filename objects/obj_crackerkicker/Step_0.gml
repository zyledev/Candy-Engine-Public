switch (state)
{
	case baddiestates.idle:
		scr_enemy_idle();
		break;
	case baddiestates.charge:
		scr_enemy_charge();
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
	case baddiestates.grabbed:
		scr_enemy_grabbed();
		break;
	case baddiestates.scared:
		scr_enemy_kick();
		break;
	case baddiestates.kick2: // this might break when removed.
		scr_enemy_kick();
		break;
}
if (state = baddiestates.stun && stunned > 40 && !birdcreated)
{
	birdcreated = true;
	with (instance_create(x, y, obj_enemybird))
		ID = other.id;
}
if (state != baddiestates.stun)
	birdcreated = false;
if (bombreset > 0)
	bombreset--;
if (((obj_player.x > (x - 80) && obj_player.x < (x + 80)) && (y <= (obj_player.y + 100) && y >= (obj_player.y - 100))) && bombreset == 0)
{
	if (state = baddiestates.walk)
	{
		movespeed = 0;
		bombreset = 100;
		image_index = 0;
		sprite_index = spr_crackerkicker_kick;
		image_xscale = -sign(x - obj_player.x);
		state = baddiestates.scared;
	}
}
if (flash && alarm[2] <= 0)
	alarm[2] = 0.15 * room_speed;
if (state != baddiestates.grabbed)
	depth = 0;
if (state != baddiestates.stun)
	thrown = false;
if (!boundbox)
{
	with (instance_create(x, y, obj_baddiecollisionbox))
	{
		sprite_index = other.sprite_index;
		mask_index = other.sprite_index;
		baddieID = other.id;
		other.boundbox = 1;
	}
}
if (state = baddiestates.land || state = baddiestates.walk)
	movespeed = 1;
if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60)))
{
	if (state != baddiestates.kick2 && obj_player.state = states.mach3)
	{
		state = baddiestates.kick2;
		sprite_index = scaredspr;
		if (x != obj_player.x)
			image_xscale = -sign(x - obj_player.x);
		movespeed = 0;
		hsp = 0;
		image_index = 0;
	}
}
