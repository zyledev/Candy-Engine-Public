function scr_player_mach3()
{
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
			mach2 = 100;
			momemtum = 1;
			move = (key_right + key_left);
			move2 = key_right2 + key_left2;
			if (movespeed < 24 && move == xscale)
			{
				movespeed += 0.05;
				if (!instance_exists(obj_crazyruneffect))
					instance_create(x, y, obj_crazyruneffect);
			}
			else if (movespeed > 12 && move != xscale)
				movespeed -= 0.05;
			crouchslideAnim = true;
			if (!key_jump2 && !jumpstop && vsp < 0.5)
			{
				vsp /= 2;
				jumpstop = true;
			}
			if (grounded && vsp > 0)
				jumpstop = false;
			if (input_buffer_jump < 8 && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1) && key_attack)
			{
				scr_sound(sound_jump);
				image_index = 0;
				sprite_index = spr_player_mach3jump;
				vsp = -9;
			}
			if (sprite_index == spr_player_mach3jump && animation_end())
				sprite_index = spr_player_mach4;
			if (animation_end() && (sprite_index == spr_player_rollgetup || sprite_index == spr_player_parry || sprite_index == spr_player_dashpad))
				sprite_index = spr_player_mach4;
			if ((movespeed > 20 && sprite_index != spr_player_crazyrun) && sprite_index != spr_player_dive && sprite_index != spr_player_rollgetup)
			{
				flash = true;
				sprite_index = spr_player_crazyrun;
			}
			if (sprite_index == spr_player_crazyrun && !instance_exists(obj_crazyrunothereffect))
				instance_create(x, y, obj_crazyrunothereffect);
			if (key_jump)
				input_buffer_jump = 0;
			if (key_up && grounded && sprite_index != spr_player_dashpad)
			{
				scr_sound(sound_superjumpcharge1);
				sprite_index = spr_player_superjumpprep;
				state = states.Sjumpprep;
				hsp = 0;
				image_index = 0;
			}
			if (!key_attack && grounded && sprite_index != spr_player_dashpad)
			{
				scr_sound(sound_break);
				sprite_index = spr_player_machslidestart;
				state = states.machslide;
				image_index = 0;
				mach2 = 0;
			}
			if ((move != 0 && xscale != move && grounded) && Dashpad_buffer <= 0)
			{
				scr_sound(sound_maximumspeedstop);
				sprite_index = spr_player_machslideboost3;
				flash = false;
				state = states.machslide;
				image_index = 0;
				mach2 = 100;
			}
			if (key_down && !place_meeting(x, y, obj_dashpad) && !grounded && sprite_index != spr_player_dive)
			{
				flash = false;
				state = states.machroll;
				vsp = 15;
			}
			if (key_down && !place_meeting(x, y, obj_dashpad) && grounded)
			{
				flash = false;
				state = states.machroll;
			}
			if (sprite_index == spr_player_dive && grounded)
				sprite_index = spr_player_mach4;
			if (!key_down && sprite_index == spr_player_dive && !grounded)
			{
				vsp = 15;
				sprite_index = spr_player_mach4;
			}
			if (((!grounded && !place_meeting(x + hsp, y, obj_metalblock)) && scr_solid(x + hsp, y, true) && !place_meeting(x + hsp, y, obj_destructibles) && !scr_slope_ext(x + sign(hsp), y)) || (grounded && (scr_solid(x + sign(hsp), y - 2, true) && !scr_slope_ext(x + sign(hsp), y - 1)) && (!place_meeting(x + hsp, y, obj_metalblock) && !place_meeting(x + hsp, y, obj_destructibles)) && scr_slope()))
			{
				wallspeed = clamp(movespeed, 12, 24);
				state = states.climbwall;
			}
			else if (grounded && scr_solid(x + sign(hsp), y) && (!scr_slope() && scr_solid(x + sign(hsp), y - 2)) && !place_meeting(x + sign(hsp), y, obj_metalblock) && !place_meeting(x + sign(hsp), y, obj_destructibles))
			{
				scr_sound(sound_maximumspeedland);
				with (obj_camera)
				{
					shake_mag = 20;
					shake_mag_acc = 40 / room_speed;
				}
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
					}
				}
				flash = false;
				combo = 0;
				sprite_index = spr_player_mach3hitwall;
				state = states.bump;
				hsp = -2.5 * xscale;
				vsp = -3;
				mach2 = 0;
				image_index = 0;
				instance_create(x + (10 * xscale), y + 10, obj_bumpeffect);
			}
			if (!grounded)
			{
				if (scr_solid(x + 1, y) && xscale == 1 && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x + 1, y, obj_destructibles))
				{
					wallspeed = movespeed;
					machhitAnim = false;
					state = states.climbwall;
				}
				else if (scr_solid(x - 1, y) && xscale == -1 && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x - 1, y, obj_destructibles))
				{
					wallspeed = movespeed;
					machhitAnim = false;
					state = states.climbwall;
				}
			}
			if (!instance_exists(obj_chargeeffect) && sprite_index != spr_player_dive)
				instance_create(x, y, obj_chargeeffect);
			if (!instance_exists(obj_superdashcloud) && grounded)
				instance_create(x, y, obj_superdashcloud);
			if (key_slap2 && shotgunAnim == 1 && global.ammo > 0 && !grounded)
			{
				global.ammo -= 1;
				vsp -= 11;
				sprite_index = spr_player_shotgunjump1;
				state = states.shotgun;
				image_index = 0;
			}
			if (sprite_index == spr_player_mach4)
				image_speed = 0.4;
			if (sprite_index == spr_player_crazyrun)
				image_speed = 0.55;
			if (sprite_index == spr_player_rollgetup)
				image_speed = 0.35;
			if (sprite_index == spr_player_dashpad)
				image_speed = 0.3;
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
			break;
	}
}
