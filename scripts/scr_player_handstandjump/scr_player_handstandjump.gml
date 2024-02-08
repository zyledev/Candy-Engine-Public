function scr_player_handstandjump()
{
	switch (character)
	{
		case "P":
			move = key_left + key_right;
			landAnim = false;
			mach2 = 35;
			hsp = xscale * movespeed;
			grav = 0;
			momemtum = 1;
			dir = xscale;
			if (image_index < 2)
				movespeed = 12;
			if (image_index > 7)
				movespeed -= 1;
			if (move != xscale && move != 0)
			{
				state = states.normal;
				momemtum = 0;
				mach2 = 0;
				if (audio_is_playing(sound_suplex1))
					audio_stop_sound(sound_suplex1);
			}
			if (animation_end())
			{
				state = states.normal;
				grav = 0.5;
				flash = false;
			}
			if (key_down && grounded)
			{
				grav = 0.5;
				sprite_index = spr_crouchslip;
				machhitAnim = false;
				state = states.crouchslide;
				if (audio_is_playing(sound_suplex1))
					audio_stop_sound(sound_suplex1);
			}
			if (key_jump && grounded)
			{
				movespeed = 10;
				sprite_index = spr_mach2jump;
				instance_create(x, y, obj_jumpdust);
				state = states.mach2;
				vsp = -9;
				if (audio_is_playing(sound_suplex1))
					audio_stop_sound(sound_suplex1);
			}
			if ((scr_solid(x + 1, y) && xscale == 1 && !place_meeting(x + sign(hsp), y, obj_slope)) && !place_meeting(x + xscale, y, obj_destructibles))
			{
				movespeed = 0;
				state = states.bump;
				hsp = -2.5;
				vsp = -3;
				mach2 = 0;
				image_index = 0;
				machslideAnim = 1;
				machhitAnim = false;
				instance_create(x + 10, y + 10, obj_bumpeffect);
				if (audio_is_playing(sound_suplex1))
					audio_stop_sound(sound_suplex1);
				scr_sound(sound_bump);
			}
			if ((scr_solid(x - 1, y) && xscale == -1 && !place_meeting(x + sign(hsp), y, obj_slope)) && !place_meeting(x + xscale, y, obj_destructibles))
			{
				movespeed = 0;
				state = states.bump;
				hsp = 2.5;
				vsp = -3;
				mach2 = 0;
				image_index = 0;
				machslideAnim = 1;
				machhitAnim = false;
				instance_create(x + 10, y + 10, obj_bumpeffect);
				if (audio_is_playing(sound_suplex1))
					audio_stop_sound(sound_suplex1);
				scr_sound(sound_bump);
			}
			image_speed = 0.3;
			if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
				instance_create(x, y, obj_slidecloud);
			break;
	}
	if (key_attack && animation_end() && sprite_index != spr_player_bump)
	{
		movespeed = 10;
		mach2 = 20;
		state = states.mach2;
		sprite_index = spr_mach;
	}
	if (global.starrmode == 0)
	{
		if ((key_slap2 && !key_down && suplexmove == 0) && grounded && sprite_index != spr_player_machfallback)
		{
			sprite_index = spr_player_machfallback;
			image_index = 0;
			image_speed = 0.2;
			movespeed = 10;
			state = states.mach2;
		}
	}
}
