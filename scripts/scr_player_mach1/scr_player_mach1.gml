function scr_player_mach1()
{
	switch character
	{
		case "P":
			dir = xscale;
			move = key_left + key_right;
			landAnim = false;
			if scr_solid(x + 1, y) && xscale == 1 && !place_meeting(x + 1, y, obj_slope)
			{
				mach2 = 0;
				state = states.normal;
				movespeed = 0;
			}
			if scr_solid(x - 1, y) && xscale == -1 && !place_meeting(x - 1, y, obj_slope)
			{
				mach2 = 0;
				state = states.normal;
				movespeed = 0;
			}
			if movespeed <= 8
				movespeed += 0.25;
			machhitAnim = false;
			crouchslideAnim = true;
			if !place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2)
				hsp = xscale * movespeed;
			else if place_meeting(x, y + 1, obj_railh)
				hsp = (xscale * movespeed) - 5;
			else if place_meeting(x, y + 1, obj_railh2)
				hsp = (xscale * movespeed) + 5;
			if grounded && xscale = 1 && move = -1
			{
				momemtum = false;
				mach2 = 0;
				movespeed = 0;
				image_index = 0;
				xscale = -1;
			}
			if grounded && xscale = -1 && move = 1
			{
				momemtum = false;
				mach2 = 0;
				movespeed = 0;
				image_index = 0;
				xscale = 1;
			}
			if grounded
			{
				if mach2 < 35
					mach2++;
				if mach2 >= 35
				{
					movespeed = 10;
					state = states.mach2;
					instance_create(x, y, obj_jumpdust);
				}
			}
			sprite_index = spr_mach1;
			if !grounded
			{
				sprite_index = spr_airdash1;
				momemtum = true;
				state = states.jump;
				jumpAnim = false;
				image_index = 0;
			}
			if !key_attack && grounded
			{
				state = states.normal;
				image_index = 0;
				mach2 = 0;
			}
			if key_down
			{
				sprite_index = spr_crouchslip;
				state = states.crouchslide;
				mach2 = 0;
			}
			image_speed = 0.45;
			if key_jump && grounded && key_attack
			{
				scr_sound(sound_jump);
				sprite_index = spr_airdash1;
				dir = xscale;
				momemtum = true;
				vsp = -11;
				movespeed += 2;
				state = states.jump;
				jumpAnim = true;
				image_index = 0;
			}
			if !instance_exists(obj_dashcloud) && grounded
				instance_create(x, y, obj_dashcloud);
			else if key_taunt2
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
		case "N":
			sprite_index = spr_pizzano_mach1;
			if grounded
				state = states.machpizzano;
			movespeed = 6;
			break;
	}
}
