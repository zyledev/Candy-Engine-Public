direction = point_direction(x, y, obj_player.x, obj_player.y);
if (x > obj_player.x)
	image_xscale = 1;
if (x < obj_player.x)
	image_xscale = -1;
dir = (dir + 1) % 360;
x = lengthdir_x(dis, dir) + obj_player.x;
y = lengthdir_y(dis, dir) + obj_player.y;
dis = lerp(dis, mindis, 0.025);
timer--;
if (coneballspeed != 5)
	coneballspeed += 0.01;
if (place_meeting(x, y, obj_player))
{
	if (timer <= 0)
	{
		with (obj_player)
		{
			if (global.collect <= 0)
			{
				targetRoom = timesuproom;
				targetDoor = "A";
				if (!instance_exists(obj_fadeout))
				{
					instance_create(x, y, obj_fadeout);
					audio_stop_all();
					scr_sound(mu_timesup);
				}
				state = states.timesup;
				instance_destroy(obj_coneball);
			}
			if (global.collect > 0)
				other.hurtplayer();
		}
	}
}
