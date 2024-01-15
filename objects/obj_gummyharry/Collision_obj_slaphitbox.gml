with (obj_player)
{
	if (other.hp != 0 && state = states.handstandjump)
	{
		instance_create_depth(other.x, other.y, 0, obj_bangeffect);
		instance_create_depth(other.x, other.y, -1, obj_slapstar);
		instance_create_depth(other.x, other.y, -1, obj_baddiegibs);
		with (obj_camera)
		{
			shake_mag = 3;
			shake_mag_acc = 3 / room_speed;
		}
		scr_sound(sound_combo1);
		other.sprite_index = spr_harryalive;
		other.hp -= 1;
		hsp = -xscale * 4;
		vsp = -4;
		mach2 = 0;
		image_index = 0;
		sprite_index = choose(spr_player_blockbreak1, spr_player_blockbreak2, spr_player_blockbreak3, spr_player_blockbreak4, spr_player_blockbreak5);
		state = states.tackle;
		instance_destroy(obj_slaphitbox);
	}
	if (other.hp <= 0 && state = states.handstandjump)
	{
		state = states.finishingblow;
		sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4);
		image_index = 0;
		hsp = 0;
		movespeed = 0;
		instance_destroy(obj_slaphitbox);
	}
}
