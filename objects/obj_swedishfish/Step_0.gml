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
}
if (state == baddiestates.stun && stunned > 100 && birdcreated == 0)
{
	birdcreated = 1;
	with (instance_create(x, y, obj_enemybird))
		ID = other.id;
}
if (state != baddiestates.stun)
	birdcreated = false;
if (state == baddiestates.walk && y > ystart && !scr_solid(x, y - 1))
	y--;
if (state == baddiestates.walk && y < ystart && !scr_solid(x, y + 1))
	y++;
if (state == baddiestates.stun)
	grav = 0.5;
else
	grav = 0;
if (flash == 1 && alarm[2] <= 0)
	alarm[2] = 0.15 * room_speed;
if (state != baddiestates.grabbed)
	depth = 0;
if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60))
{
}
if (hitboxcreate == 0 && state == baddiestates.charge && sprite_index == spr_swed_charge)
{
	hitboxcreate = true;
	with (instance_create(x, y, obj_forkhitbox))
	{
		ID = other.id;
		image_xscale = other.image_xscale;
		x = other.x;
		y = other.y;
		depth = -1;
		sprite_index = spr_chargershitbox;
		mask_index = spr_chargershitbox;
	}
}
if (sprite_index == spr_swed_chargestart && floor(image_index) == (image_number - 1))
{
	sprite_index = spr_swed_charge;
	movespeed = 10;
}
if (bombreset > 0)
	bombreset--;
if (obj_player.bushdetection == 0 && ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60))) && state == baddiestates.walk && bombreset == 0)
{
	if (state != baddiestates.charge || state != baddiestates.stun)
		state = baddiestates.charge;
	if (state == baddiestates.charge && sprite_index != spr_swed_charge && sprite_index != scaredspr)
	{
		sprite_index = spr_swed_chargestart;
		image_xscale = -sign(x - obj_player.x);
		bombreset = 250;
	}
}
if (state == baddiestates.charge && place_meeting(x + 1, y, obj_solid) && vsp < -18)
{
	state = baddiestates.stun;
	vsp++;
	sprite_index = stunfallspr;
	stunned = 100;
}
if (state == baddiestates.stun || state == baddiestates.walk)
	movespeed = 0;
if (state != baddiestates.stun)
	thrown = false;
if (boundbox == 0)
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
	if (state != baddiestates.scared && obj_player.state == states.mach3)
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
