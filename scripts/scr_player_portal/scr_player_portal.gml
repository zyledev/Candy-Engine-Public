function scr_player_portal()
{
	if (animation_end() && sprite_index == spr_pizzaportalentrancestart)
	{
		instance_create(x, y, obj_pizzaportalfade);
		state = states.freefall;
		grav = 0.5;
	}
	mach2 = 0;
}
