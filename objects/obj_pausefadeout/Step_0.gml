if (fadealpha > 1 && !fadein)
{
	if (obj_pause.pause)
	{
		obj_pause.pause = false;
		instance_activate_all();
		audio_resume_sound(obj_music.pausedmusic);
	}
	else if (!obj_pause.pause)
	{
		audio_pause_all();
		obj_pause.pause = true;
		instance_deactivate_all(true);
		instance_activate_object(obj_pause);
	}
	fadein = true;
}
if (!fadein)
	fadealpha += 0.1;
else if (fadein)
	fadealpha -= 0.1;
if (fadein && fadealpha < 0)
	instance_destroy();
