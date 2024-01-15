function scr_sound(argument0)
{
	var snd = argument[irandom(argument_count - 1)];
	audio_play_sound(snd, 1, false);
}
