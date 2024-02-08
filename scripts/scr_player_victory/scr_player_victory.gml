function scr_player_victory()
{
	hsp = 0;
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = true;
	machhitAnim = false;
	if (place_meeting(x, y, obj_keydoor))
		sprite_index = spr_player_enterkey;
	if (place_meeting(x, y, obj_keydoorclock))
		sprite_index = spr_player_enterkey;
	if (place_meeting(x, y, obj_startgate))
		sprite_index = spr_entergate;
	if (animation_end())
		image_speed = 0;
	else
		image_speed = 0.35;
}
