function scr_collide_destructibles()
{
	if (state == states.mach2 || state == states.mach3 || state == states.machroll || state == states.Nhookshot || state == states.knightpep || state == states.crouchslide || state == states.uppercut || state == states.parry || state == states.puddle || state == states.tumble || state == states.machpizzano || state == states.door || state == states.comingoutdoor)
	{
		if (place_meeting(x + hsp, y, obj_destructibles))
		{
			with (instance_place(x + hsp, y, obj_destructibles))
				instance_destroy();
		}
		if (place_meeting(x + hsp, y, obj_bigdestructibles))
		{
			with (instance_place(x + hsp, y, obj_bigdestructibles))
				instance_destroy();
		}
	}
	if (state == states.freefall || state == states.freefallland || state == states.puddle)
	{
		if (place_meeting(x, y + 1, obj_destructibles))
		{
			with (instance_place(x, y + 1, obj_destructibles))
				instance_destroy();
		}
		if (place_meeting(x, y + 1, obj_bigdestructibles))
		{
			with (instance_place(x, y + 1, obj_bigdestructibles))
				instance_destroy();
			state = states.freefallland;
			sprite_index = spr_player_bodyslamland;
		}
	}
	if (state == states.normal && global.cane == 1 && sprite_index == spr_caneslam)
	{
		if (place_meeting(x, y + 1, obj_destructibles))
		{
			with (instance_place(x, y + 1, obj_destructibles))
				instance_destroy();
		}
		if (place_meeting(x, y + 1, obj_bigdestructibles))
		{
			with (instance_place(x, y + 1, obj_bigdestructibles))
				instance_destroy();
		}
	}
	if (sprite_index == spr_null)
	{
		if (place_meeting(x + hsp, y, obj_destructibles))
		{
			with (instance_place(x + hsp, y, obj_destructibles))
				instance_destroy();
		}
		if (place_meeting(x + hsp, y, obj_bigdestructibles))
		{
			with (instance_place(x + hsp, y, obj_bigdestructibles))
				instance_destroy();
		}
		if (place_meeting(x - hsp, y, obj_destructibles))
		{
			with (instance_place(x - hsp, y, obj_destructibles))
				instance_destroy();
		}
		if (place_meeting(x - hsp, y, obj_bigdestructibles))
		{
			with (instance_place(x - hsp, y, obj_bigdestructibles))
				instance_destroy();
		}
	}
	if (state == states.knightpep || state == states.superslam || state == states.Nhookshot)
	{
		if (place_meeting(x, y + 1, obj_destructibles))
		{
			with (instance_place(x, y + 1, obj_destructibles))
				instance_destroy();
		}
		if (place_meeting(x, y - 1, obj_bigdestructibles))
		{
			with (instance_place(x, y - 1, obj_bigdestructibles))
				instance_destroy();
		}
	}
	if (place_meeting(x, y + 1, obj_destructibleplatform))
	{
		with (instance_place(x, y + 1, obj_destructibleplatform))
		{
			falling = 1;
			if (falling == 1)
				image_speed = 0.35;
		}
	}
	if (state == states.jump || state == states.Sjump || state == states.mach2 || state == states.mach3 || state == states.machpizzano)
	{
		if (place_meeting(x, y - 1, obj_destructibles))
		{
			with (instance_place(x, y - 1, obj_destructibles))
				instance_destroy();
		}
		if (place_meeting(x, y - 1, obj_bigdestructibles))
		{
			with (instance_place(x, y - 1, obj_bigdestructibles))
				instance_destroy();
		}
	}
	if (state == states.uppercut)
	{
		if (place_meeting(x, y - 1, obj_destructibles))
		{
			with (instance_place(x, y - 1, obj_destructibles))
				instance_destroy();
		}
		if (place_meeting(x, y - 1, obj_bigdestructibles))
		{
			with (instance_place(x, y - 1, obj_bigdestructibles))
				instance_destroy();
		}
		if (place_meeting(x, y + 1, obj_destructibles))
		{
			with (instance_place(x, y + 1, obj_destructibles))
				instance_destroy();
		}
		if (place_meeting(x, y + 1, obj_bigdestructibles))
		{
			with (instance_place(x, y + 1, obj_bigdestructibles))
				instance_destroy();
		}
	}
	if (state == states.handstandjump)
	{
		with (obj_bigdestructibles)
		{
			if (place_meeting(x - obj_player.hsp, y, obj_player))
			{
				with (obj_player)
				{
					hsp = -xscale * 4;
					vsp = -4;
					mach2 = 0;
					image_index = 0;
					sprite_index = choose(spr_player_blockbreak1, spr_player_blockbreak2, spr_player_blockbreak3, spr_player_blockbreak4, spr_player_blockbreak5);
					state = states.tackle;
				}
				instance_destroy();
			}
		}
		with (obj_destructibles)
		{
			if (place_meeting(x - obj_player.hsp, y, obj_player))
				instance_destroy();
		}
	}
	with (obj_baddie)
	{
		if (place_meeting(x + hsp, y, obj_destructibles) && thrown == 1)
		{
			instance_destroy(instance_place(x + hsp, y, obj_destructibles));
			grav = 0.5;
		}
		if (place_meeting(x - hsp, y, obj_destructibles) && thrown == 1)
		{
			instance_destroy(instance_place(x - hsp, y, obj_destructibles));
			grav = 0.5;
		}
		if (place_meeting(x + hsp, y, obj_bigdestructibles) && thrown == 1)
		{
			instance_destroy(instance_place(x + hsp, y, obj_bigdestructibles));
			grav = 0.5;
		}
		if (place_meeting(x - hsp, y, obj_bigdestructibles) && thrown == 1)
		{
			instance_destroy(instance_place(x - hsp, y, obj_bigdestructibles));
			grav = 0.5;
		}
	}
}
