scr_collide();
if (place_meeting(x, y, obj_minecartrail))
	vsp = 0;
if (place_meeting(x, y - 4, obj_player))
{
	obj_player.state = states.minecart;
	obj_player.sprite_index = spr_player_minecart;
	obj_player.xscale = image_xscale;
	if (!instance_exists(obj_poofeffect))
		instance_create(x, y, obj_poofeffect);
}
if (obj_player.state == states.minecart)
	visible = 0;
else
	visible = 1;
