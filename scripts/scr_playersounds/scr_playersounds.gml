function scr_playersounds()
{
	with (obj_player)
	{
		if (state == states.mach1 && (!audio_is_playing(sound_dash1) && grounded))
			audio_play_sound(sound_dash1, 1, false);
		else if (state != states.mach1 || (!grounded || move == -xscale))
			audio_stop_sound(sound_dash1);
		if (sprite_index == spr_mach && !audio_is_playing(sound_dash2))
			audio_play_sound(sound_dash2, 1, false);
		else if (sprite_index != spr_mach)
			audio_stop_sound(sound_dash2);
		if (((state == states.mach3 && sprite_index != spr_player_crazyrun) || sprite_index == spr_player_machslideboost3) && !audio_is_playing(sound_maxspeed))
			audio_play_sound(sound_maxspeed, 1, false);
		else if ((state != states.mach3 && sprite_index != spr_player_machslideboost3) || sprite_index == spr_player_crazyrun)
			audio_stop_sound(sound_maxspeed);
		if (sprite_index == spr_player_crazyrun && !audio_is_playing(sound_dash3))
			audio_play_sound(sound_dash3, 1, false);
		else if (sprite_index != spr_player_crazyrun)
			audio_stop_sound(sound_dash3);
	}
}
