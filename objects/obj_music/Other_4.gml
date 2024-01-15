if (!global.panic)
{
	var roomname = room_get_name(room);
	if (string_letters(roomname) = "hubroom" || string_letters(roomname) = "hubpublic" || room = outer_room1)
	{
		if (!audio_is_playing(mu_hub))
		{
			audio_stop_all();
			scr_music(mu_hub);
			pausedmusic = mu_hub;
		}
	}
	if (string_letters(roomname) = "entryway" && obj_player.character = "P")
	{
		if (!audio_is_playing(mu_waffle))
		{
			audio_stop_all();
			scr_music(mu_waffle);
			pausedmusic = mu_waffle;
		}
	}
	if (string_letters(roomname) = "entryway" && obj_player.character = "N")
	{
		if (!audio_is_playing(mu_pizzanothemetune))
		{
			audio_stop_all();
			scr_music(mu_pizzanothemetune);
			pausedmusic = mu_pizzanothemetune;
		}
	}
	if (string_letters(roomname) = "entrywaysecret")
	{
		if (!audio_is_playing(mu_wafflesecret))
		{
			audio_stop_all();
			scr_music(mu_wafflesecret);
			pausedmusic = mu_wafflesecret;
		}
	}
	if (string_letters(roomname) = "tutorial")
	{
		if (!audio_is_playing(mu_tutorial))
		{
			audio_stop_all();
			scr_music(mu_tutorial);
			pausedmusic = mu_tutorial;
		}
	}
	if (string_letters(roomname) = "molasses")
	{
		if (!audio_is_playing(mu_swamp))
		{
			audio_stop_all();
			scr_music(mu_swamp);
			pausedmusic = mu_swamp;
		}
	}
	if (string_letters(roomname) = "steamy")
	{
		for (i = 0; i < 20; i++)
		{
			if (roomname = ("steamy_" + string(i)) && i < 8)
			{
				if (!audio_is_playing(mu_steamy))
				{
					audio_stop_all();
					scr_music(mu_steamy);
					audio_sound_set_track_position(global.music, fadeoff);
					pausedmusic = mu_steamy;
				}
			}
			if ((roomname = ("steamy_" + string(i)) && i >= 7) || room = steamy_11_1)
			{
				if (!audio_is_playing(mu_steamyinner))
				{
					audio_stop_all();
					scr_music(mu_steamyinner);
					audio_sound_set_track_position(global.music, fadeoff);
					pausedmusic = mu_steamyinner;
				}
			}
		}
	}
	if (string_letters(roomname) = "steamy_secret")
	{
		if (!audio_is_playing(mu_steamysecret))
		{
			audio_stop_all();
			scr_music(mu_steamysecret);
			audio_sound_set_track_position(global.music, fadeoff);
			pausedmusic = mu_steamysecret;
		}
	}
	if (string_letters(roomname) = "molassessecret")
	{
		if (!audio_is_playing(mu_swampsecret))
		{
			audio_stop_all();
			scr_music(mu_swampsecret);
			audio_sound_set_track_position(global.music, fadeoff);
			pausedmusic = mu_swampsecret;
		}
	}
	if (string_letters(roomname) = "devroom")
	{
		if (!audio_is_playing(mu_what))
		{
			audio_stop_all();
			scr_music(mu_what);
			audio_sound_set_track_position(global.music, fadeoff);
			pausedmusic = mu_what;
		}
	}
	if (string_letters(roomname) = "mines")
	{
		for (i = 0; i < 20; i++)
		{
			if (roomname = ("mines_" + string(i)) && i < 7)
			{
				if (!audio_is_playing(mu_mineshaft))
				{
					audio_stop_all();
					scr_music(mu_mineshaft);
					audio_sound_set_track_position(global.music, fadeoff);
					pausedmusic = mu_mineshaft;
				}
			}
			if (roomname = ("mines_" + string(i)) && i >= 7)
			{
				if (!audio_is_playing(mu_cobaltcaverns))
				{
					audio_stop_all();
					scr_music(mu_cobaltcaverns);
					audio_sound_set_track_position(global.music, fadeoff);
					pausedmusic = mu_cobaltcaverns;
				}
			}
		}
	}
	if (string_letters(roomname) = "minessecret")
	{
		if (!audio_is_playing(mu_minessecret))
		{
			audio_stop_all();
			scr_music(mu_minessecret);
			audio_sound_set_track_position(global.music, fadeoff);
			pausedmusic = mu_minessecret;
		}
	}
	if (string_letters(roomname) = "palroom")
	{
		if (!audio_is_playing(mu_paletteselect))
		{
			audio_stop_all();
			scr_music(mu_paletteselect);
			pausedmusic = mu_paletteselect;
		}
	}
}
