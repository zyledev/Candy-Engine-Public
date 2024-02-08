x = obj_player.x;
y = obj_player.y;
if (obj_player.sprite_index != spr_player_supertaunt)
	instance_destroy();
if (global.roomsave)
	instance_deactivate_object(obj_supertaunthitbox);
with (obj_baddie)
{
	if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)))
		instance_destroy();
}
