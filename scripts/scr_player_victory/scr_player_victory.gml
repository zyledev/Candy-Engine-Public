function scr_player_victory()
{
	hsp = 0;
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = true;
	machhitAnim = false;
	if (place_meeting(x, y, obj_keydoor))
		sprite_index = spr_player_enterkey;
	if (place_meeting(x, y, obj_keydoorclock))
		sprite_index = spr_player_enterkey;
	if (place_meeting(x, y, obj_startgate))
		sprite_index = spr_entergate;
	if (floor(image_index) == (image_number - 1))
		image_speed = 0;
	else
		image_speed = 0.35;
}
