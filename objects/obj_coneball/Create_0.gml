coneballspeed = 1;
x = obj_player.x;
y = -100;
dis = 800;
mindis = 150;
dir = 0;
timer = 150;
hurtplayer = function()
{
	with (obj_player)
	{
		
		if ((state = states.knightpep || state = states.knightpepattack || state = states.knightpepslopes) && !cutscene)
			exit;
		else if (state = states.bombpep && !hurted)
			exit;
		else if (state = states.boxxedpep)
			exit;
		else if (state = states.cheesepep || state = states.cheesepepstick)
			exit;
		else if (state != states.hurt && !hurted && !cutscene && state != states.bump && state != states.tumble)
		{
			scr_sound(sound_touchspike);
			global.hurtcounter += 1;
			alarm[8] = 60;
			alarm[7] = 120;
			hurted = true;
			if (xscale == other.image_xscale)
				sprite_index = spr_hurtjump;
			else
				sprite_index = spr_hurt;
			movespeed = 8;
			vsp = -5;
			timeuntilhpback = 300;
			if (global.collect > 100)
				global.collect -= 100;
			else
				global.collect = 0;
			if (global.collect != 0)
			{
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
			}
			else if (obj_player.shotgunAnim)
				obj_player.shotgunAnim = false;
			instance_create(x, y, obj_spikehurteffect);
			state = states.hurt;
			image_index = 0;
			flash = true;
			global.style -= 15;
		}
	}
};
