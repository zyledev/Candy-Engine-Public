function scr_player_stunned()
{
	hsp = 0;
	combo = 0;
	mach2 = 0;
	bounce = 0;
	jumpAnim = 1;
	dashAnim = 1;
	if grounded
		landAnim = false;
	else
		landAnim = true;
	jumpstop = 0;
	moveAnim = true;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 0;
	machhitAnim = 0;
	movespeed = 0;
	hurted = true;
	turning = false;
	alarm[5] = 2;
	alarm[7] = 60;
	sprite_index = spr_player_stunned;
	image_speed = 0.35;
	if (floor(image_index) == 53)
	{
		mask_index = spr_player_mask;
		state = states.normal;
		sprite_index = spr_player_idle;
		image_index = 0;
	}
	audio_sound_gain(sfx_hurt, 0.7, 0);
	if (!audio_is_playing(sfx_hurt))
		audio_play_sound(sfx_hurt, 1, false);
}
