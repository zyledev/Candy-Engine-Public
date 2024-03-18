if (obj_player.state == states.shocked)
{
	obj_player.state = states.normal;
	if (!instance_exists(obj_tasershockwave))
		instance_create(x, y, obj_tasershockwave);
}
if (obj_player.state == states.bushdisguise)
	obj_player.state = states.normal;
