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
		scr_enemy_scared();
		break;
	case baddiestates.inhaled:
		scr_enemy_inhaled();
		break;
}
if (point_in_circle(x, y, obj_player.x + (75 * obj_player.xscale), obj_player.y, 125) && obj_player.inhaling && state != baddiestates.inhaled)
	state = baddiestates.inhaled;
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
if (((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60))) && obj_player.state != states.cotton && obj_player.state != states.cottondrill && obj_player.state != states.door && obj_player.state != states.cottonroll && obj_player.state != 112)
{
	if (state != baddiestates.pizzagoblinthrow && bombreset = 0 && obj_player.state != states.cotton)
	{
		if (state = baddiestates.walk || state = baddiestates.idle)
		{
			image_index = 0;
			state = baddiestates.pizzagoblinthrow;
			if (x != obj_player.x)
				image_xscale = -sign(x - obj_player.x);
			sprite_index = spr_throw;
		}
	}
}
if (flash && alarm[2] <= 0)
	alarm[2] = 0.15 * room_speed;
if (state != baddiestates.grabbed)
	depth = 0;
if (state != baddiestates.stun)
	thrown = false;
if (!boundbox && state != baddiestates.inhaled)
{
	with (instance_create(x, y, obj_baddiecollisionbox))
	{
		sprite_index = other.sprite_index;
		mask_index = other.sprite_index;
		baddieID = other.id;
		other.boundbox = 1;
	}
}
if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60)))
{
	if (state != baddiestates.scared && (obj_player.state = states.mach3 || obj_player.state = states.machpizzano))
	{
		state = baddiestates.scared;
		sprite_index = scaredspr;
		if (x != obj_player.x)
			image_xscale = -sign(x - obj_player.x);
		movespeed = 0;
		hsp = 0;
		image_index = 0;
	}
}
