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
	case baddiestates.grabbed: 
		scr_enemy_grabbed();
		break;
	case baddiestates.scared: 
		scr_enemy_scared();
		break;
	case baddiestates.slugidle: 
		scr_enemy_slugidle();
		break;
	case baddiestates.slugjump: 
		scr_enemy_slugjump();
		break;
	case baddiestates.slugparry:
		scr_enemy_slugparry();
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
		other.boundbox = true;
	}
}
if (obj_player.state = states.mach3)
	jumptimer = 0;
if (state != baddiestates.idle && state != baddiestates.stun && state != baddiestates.grabbed && state != baddiestates.slugidle && state != baddiestates.slugjump && state != baddiestates.slugparry && idletimer > 0)
	idletimer--;
if (state != baddiestates.idle && state != baddiestates.stun && state != baddiestates.grabbed && state != baddiestates.slugidle && state != baddiestates.slugjump && state != baddiestates.slugparry && jumptimer > 0)
	jumptimer--;
if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60)))
{
	if (state != baddiestates.idle && state != baddiestates.stun && state != baddiestates.grabbed && state != baddiestates.slugidle && state != baddiestates.slugjump && state != baddiestates.slugparry && jumptimer == 0)
	{
		image_xscale = -sign(x - obj_player.x);
		state = baddiestates.slugjump;
		jumptimer = 100;
		sprite_index = spr_sluggy_jumpstart;
		image_index = 0;
		hsp = 0;
		vsp = 0;
		movespeed = 0;
	}
}
