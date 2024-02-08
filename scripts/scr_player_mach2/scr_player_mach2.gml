function scr_player_mach2()
{
	if (!instance_exists(obj_mach3effect))
		instance_create(x, y, obj_mach3effect);
	switch (character)
	{
		case "P":
			if (windingAnim < 2000)
				windingAnim++;
			if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
				hsp = xscale * movespeed;
			else if (place_meeting(x, y + 1, obj_railh))
				hsp = (xscale * movespeed) - 5;
			else if (place_meeting(x, y + 1, obj_railh2))
				hsp = (xscale * movespeed) + 5;
			move2 = key_right2 + key_left2;
			move = (key_right + key_left);
			crouchslideAnim = 1;
			if (sprite_index != spr_player_machfallback)
			{
				if (!key_jump2 && !jumpstop && vsp < 0.5)
				{
					vsp /= 2;
					jumpstop = true;
				}
			}
			if (sprite_index != spr_player_machfallback)
			{
				if (grounded && vsp > 0)
					jumpstop = false;
				if (input_buffer_jump < 8 && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1) && key_attack)
				{
					image_index = 0;
					sprite_index = spr_secondjump1;
					scr_sound(sound_jump);
					vsp = -9;
				}
			}
			if (grounded && sprite_index != spr_player_machfallback)
			{
				if (machpunchAnim == 0 && sprite_index != spr_mach && sprite_index != spr_player_mach3 && sprite_index != spr_player_machhit)
				{
					if (sprite_index != spr_player_machhit && sprite_index != spr_player_rollgetup)
						sprite_index = spr_mach;
				}
				if (machpunchAnim == 1)
				{
					if (punch == 0)
						sprite_index = spr_machpunch1;
					if (punch == 1)
						sprite_index = spr_machpunch2;
					if (floor(image_index) == (image_number - 1) && sprite_index == spr_machpunch1)
					{
						punch = 1;
						machpunchAnim = 0;
					}
					if (floor(image_index) == (image_number - 1) && sprite_index == spr_machpunch2)
					{
						punch = 0;
						machpunchAnim = 0;
					}
				}
			}
			if (!grounded)
				machpunchAnim = 0;
			if (grounded && character == "P")
			{
				if (mach2 < 100)
					mach2 += 1.5;
				if (mach2 >= 100)
				{
					machhitAnim = false;
					state = states.mach3;
					flash = true;
					sprite_index = spr_player_mach4;
					instance_create(x, y, obj_jumpdust);
					if (movespeed < 12)
						movespeed = 12;
				}
			}
			if (sprite_index != spr_player_machfallback)
			{
				if (key_jump)
					input_buffer_jump = 0;
				if (!key_attack && grounded)
				{
					scr_sound(sound_break);
					sprite_index = spr_machslidestart;
					state = states.machslide;
					image_index = 0;
					mach2 = 0;
				}
			}
			if (move == -1 && xscale == 1 && grounded)
			{
				scr_sound(sound_maximumspeedstop);
				sprite_index = spr_machslideboost;
				state = states.machslide;
				image_index = 0;
				mach2 = 35;
			}
			if (move == 1 && xscale == -1 && grounded)
			{
				scr_sound(sound_maximumspeedstop);
				sprite_index = spr_machslideboost;
				state = states.machslide;
				image_index = 0;
				mach2 = 35;
			}
			if (key_down2 && grounded)
			{
				sprite_index = spr_crouchslip;
				if (character == "P")
					machhitAnim = false;
				state = states.crouchslide;
			}
			if ((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope)) || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope)))
			{
				wallspeed = movespeed;
				state = states.climbwall;
			}
			if (grounded && !scr_slope() && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope))
			{
				movespeed = 0;
				state = states.normal;
			}
			if (!instance_exists(obj_dashcloud) && grounded)
				instance_create(x, y, obj_dashcloud);
			if ((!grounded && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump) && sprite_index != spr_player_machfallback && sprite_index != spr_player_bump)
				sprite_index = spr_secondjump1;
			if (floor(image_index) == (image_number - 1) && sprite_index == spr_secondjump1)
				sprite_index = spr_secondjump2;
			if (grounded && (floor(image_index) == (image_number - 1) && sprite_index == spr_player_rollgetup))
				sprite_index = spr_mach;
			if (sprite_index == spr_player_machfallback)
			{
				move = 0;
				dir = 0;
				image_speed = 0.01;
				vsp += 0.2;
			}
			if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_machfallback)
			{
				movespeed = 12;
				mach2 = 80;
				state = states.mach2;
				sprite_index = spr_player_mach4;
			}
			if (key_taunt2)
			{
				taunttimer = 20;
				tauntstoredmovespeed = movespeed;
				tauntstoredsprite = sprite_index;
				tauntstoredstate = state;
				state = states.backbreaker;
				image_index = random_range(0, 6);
				sprite_index = spr_player_taunt;
				instance_create(x, y, obj_taunteffect);
			}
			if (sprite_index == spr_player_rollgetup)
				image_speed = 0.4;
			else
				image_speed = 0.65;
			break;
	}
}
