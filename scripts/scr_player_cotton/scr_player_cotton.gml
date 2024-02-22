function scr_player_cotton()
{
	image_speed = 0.35;
	if dir != xscale
	{
		dir = xscale;
		movespeed = 0;
	}
	if sprite_index != spr_cotton_slam && sprite_index != spr_cotton_slam2 && sprite_index != spr_cotton_slam3
		move = key_left + key_right;
	if sprite_index != spr_cotton_attack
	{
		if move != 0
			xscale = move;
	}
	hsp = move * movespeed;
	if move != 0
		movespeed = 5.5;
	else
		movespeed = 0;
	movespeed = 5.5;
	if vsp > 5
		vsp = 5;
	if key_jump && grounded
	{
		vsp = -14;
		grav = 0.025;
		image_index = 0;
		sprite_index = spr_cotton_jump;
		instance_create(x, y, obj_highjumpcloud2);
		scr_sound(sound_jump);
	}
	if key_slap2 && sprite_index != spr_cotton_attack && groundedcot
	{
		flash = true;
		image_index = 0;
		sprite_index = spr_cotton_attack;
		grounded = false;
		vsp = -4;
		grav = 0.2;
		scr_sound(sound_suplex1);
		groundedcot = false;
	}
	if sprite_index = spr_cotton_attack
	{
		hsp += (8 * xscale);
		movespeed = 0;
		instance_create(x, y, obj_swordhitbox);
		move = xscale;
		if (-key_left2 && xscale = 1) || (key_right2 && xscale = -1)
		{
			movespeed = 0;
			vsp = 0;
			hsp = 0;
			sprite_index = spr_cotton_fall;
		}
	}
	if grounded && sprite_index = spr_cotton_attack
	{
		image_index = 0;
		sprite_index = spr_cottonidle;
	}
	if sprite_index = spr_cottonidle && move != 0
	{
		image_index = 0;
		sprite_index = spr_cotton_walk;
	}
	if sprite_index = spr_cotton_walk && move = 0
	{
		image_index = 0;
		sprite_index = spr_cottonidle;
	}
	if sprite_index = spr_cotton_jump && floor(image_index) = (image_number - 1)
	{
		image_index = 0;
		sprite_index = spr_cotton_fall;
	}
	if sprite_index = spr_cotton_doublejump && floor(image_index) = (image_number - 1)
	{
		image_index = 0;
		sprite_index = spr_cotton_doublefall;
	}
	var framestopped = false;
	if sprite_index = spr_cotton_slam && floor(image_index) = (image_number - 1)
		framestopped = true;
	if framestopped
		image_index = 5;
	if sprite_index != spr_cotton_slam && framestopped
		framestopped = false;
	if sprite_index = spr_cotton_slam2 && floor(image_index) = (image_number - 1)
	{
		image_index = 0;
		sprite_index = spr_cottonidle;
		grav = 0.025;
	}
	if sprite_index = spr_cotton_slam3 && floor(image_index) = (image_number - 1)
	{
		image_index = 0;
		sprite_index = spr_cottonidle;
		grav = 0.025;
	}
	if sprite_index = spr_cotton_slam2 || sprite_index = spr_cotton_slam3
		grav = 0.5;
	if sprite_index = spr_cotton_slam
		grav = 0.2;
	if sprite_index = spr_cotton_fall || sprite_index = spr_cotton_doublefall || sprite_index = spr_cotton_jump || sprite_index = spr_cotton_doublejump && grounded && vsp >= 0
	{
		image_index = 0;
		sprite_index = spr_cotton_land;
		instance_create(x, y, obj_landcloud);
		scr_sound(sound_land);
	}
	if sprite_index = spr_cotton_fall && key_jump
	{
		vsp = -10;
		grav = 0.1;
		image_index = 0;
		sprite_index = spr_cotton_doublejump;
		instance_create(x, y, obj_highjumpcloud2);
		with instance_create(x, y, obj_highjumpcloud2)
		{
			image_xscale = other.xscale;
			sprite_index = spr_cottonpoof;
		}
		scr_sound(sound_jump);
	}
	if sprite_index = spr_cotton_land && floor(image_index) = (image_number - 1)
		sprite_index = spr_cottonidle;
	if key_down2 && !grounded && drill && sprite_index != spr_cotton_slam && sprite_index != spr_cotton_slam2 && sprite_index != spr_cotton_slam3
	{
		vsp = 9;
		state = states.cottondrill;
		sprite_index = spr_cotton_drill;
		image_index = 0;
		scr_sound(sound_suplex1);
		flash = true;
		drill = false;
		with instance_create(x, y, obj_afterimageoutward)
			hspeed = 7;
		with instance_create(x, y, obj_afterimageoutward)
			hspeed = -7;
		with instance_create(x, y, obj_afterimageoutward)
			vspeed = 7;
		with instance_create(x, y, obj_afterimageoutward)
			vspeed = -7;
	}
	if !grounded && sprite_index != spr_cotton_jump && sprite_index != spr_cotton_attack && sprite_index != spr_cotton_doublejump && sprite_index != spr_cotton_doublefall && sprite_index != spr_cotton_drill && sprite_index != spr_cotton_slam && sprite_index != spr_cotton_slam2 && sprite_index != spr_cotton_slam3
		sprite_index = spr_cotton_fall;
	if grounded && !drill
		drill = true;
	if sprite_index = spr_cotton_slam
	{
		movespeed = 0;
		hsp = 0;
		move = 0;
		dir = 0;
	}
	if sprite_index = spr_cotton_slam2
	{
		movespeed = 0;
		hsp = 0;
		move = 0;
		dir = 0;
	}
	if sprite_index = spr_cotton_slam3
	{
		movespeed = 0;
		hsp = 0;
		move = 0;
		dir = 0;
	}
	if sprite_index = spr_cotton_slam && grounded && sprite_index != spr_cotton_slam2
	{
		image_index = 0;
		sprite_index = spr_cotton_slam2;
		movespeed = -4;
	}
	if sprite_index = spr_cotton_slam && !place_meeting(x, y + 1, obj_solid) && place_meeting(x, y - 1, obj_solid)
		sprite_index = spr_cotton_fall;
}
