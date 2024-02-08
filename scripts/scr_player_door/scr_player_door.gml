function scr_player_door()
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
	if (sprite_index != spr_player_downpizzabox && sprite_index != spr_player_uppizzabox)
		sprite_index = spr_lookdoor;
	if (animation_end())
		image_speed = 0;
	if (animation_end() && !instance_exists(obj_fadeout) && (sprite_index == spr_player_downpizzabox || sprite_index == spr_player_uppizzabox))
		instance_create(x, y, obj_fadeout);
}
