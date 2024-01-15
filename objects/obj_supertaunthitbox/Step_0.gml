x = obj_player.x;
y = obj_player.y;
if (obj_player.sprite_index != spr_player_supertaunt)
	instance_destroy();
if (global.roomsave)
	instance_deactivate_object(obj_supertaunthitbox);
with (obj_baddie)
{
	if (point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), __view_get(0, 0) + __view_get(2, 0), __view_get(1, 0) + __view_get(3, 0)))
		instance_destroy();
}
