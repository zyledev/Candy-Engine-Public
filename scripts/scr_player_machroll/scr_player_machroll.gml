function scr_player_machroll()
{
	if (!place_meeting(x, y + 1, obj_railh))
		hsp = xscale * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
		hsp = (xscale * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
		hsp = (xscale * movespeed) + 5;
	mach2 = 100;
	machslideAnim = 1;
	move = (key_right + key_left);
	if (grounded)
		sprite_index = spr_player_machroll;
	if ((!key_down && !scr_solid(x + 27, y - 32) && !scr_solid(x - 27, y - 32) && !scr_solid(x, y - 32) && !scr_solid(x, y - 16)) || !grounded)
	{
		sprite_index = spr_player_mach4;
		state = states.mach3;
	}
	if (scr_solid(x + 1, y) && xscale == 1 && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x + sign(hsp), y, obj_destructibles))
	{
		scr_sound(sound_maximumspeedland);
		with (obj_camera)
		{
			shake_mag = 20;
			shake_mag_acc = 40 / room_speed;
		}
		hsp = 0;
		image_speed = 0.35;
		with (obj_baddie)
		{
			if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)))
			{
				stun = 1;
				alarm[0] = 200;
				ministun = 0;
				vsp = -5;
				hsp = 0;
				image_xscale *= -1;
			}
		}
		combo = 0;
		state = states.bump;
		hsp = -2.5;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
		instance_create(x + 10, y + 10, obj_bumpeffect);
	}
	if (scr_solid(x - 1, y) && xscale == -1 && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x + sign(hsp), y, obj_destructibles))
	{
		scr_sound(sound_maximumspeedland);
		with (obj_camera)
		{
			shake_mag = 20;
			shake_mag_acc = 40 / room_speed;
		}
		hsp = 0;
		image_speed = 0.35;
		combo = 0;
		state = states.bump;
		hsp = 2.5;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
		instance_create(x - 10, y + 10, obj_bumpeffect);
	}
	if (key_down && place_meeting(x, y, obj_slope) && xscale == 1)
		x -= 2;
	if (key_down && place_meeting(x, y, obj_slope) && xscale == -1)
		x += 2;
	if (!instance_exists(obj_cloudeffect) && grounded)
		instance_create(x, y + 43, obj_cloudeffect);
	image_speed = 0.8;
	if (!key_down && (!scr_solid(x + 27, y - 32) && (!scr_solid(x - 27, y - 32) && (!scr_solid(x, y - 32) && !scr_solid(x, y - 16)))))
	{
		image_index = 0;
		scr_sound(sound_rollgetup);
		state = states.mach2;
		if (character == "P")
			sprite_index = spr_player_rollgetup;
	}
	if ((!key_down && (!scr_solid(x + 27, y - 32) && (!scr_solid(x - 27, y - 32) && (!scr_solid(x, y - 32) && !scr_solid(x, y - 16))))) && !key_attack)
	{
		image_index = 0;
		scr_sound(sound_rollgetup);
		state = states.normal;
		if (character == "P")
			sprite_index = spr_player_rollgetup;
	}
	if (grounded)
		sprite_index = spr_machroll;
	else if (sprite_index != spr_dive)
	{
		sprite_index = spr_dive;
		vsp = 10;
	}
}
