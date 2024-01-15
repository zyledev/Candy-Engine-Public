with (obj_player)
{
	if (room == rank_room)
	{
		obj_player.x = 480;
		obj_player.y = 270;
	}
}
obj_camera.visible = 0;
if (fadealpha > 1)
{
	fadein = 1;
	if (room != rank_room)
		room = rank_room;
}
if (!fadein)
	fadealpha += 0.1;
else if (fadein)
	fadealpha -= 0.1;
