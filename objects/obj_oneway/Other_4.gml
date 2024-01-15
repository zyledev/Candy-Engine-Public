if (ds_list_find_index(global.saveroom, id) != -1)
{
	instance_destroy();
	with (instance_nearest(x, y, obj_onewaysolid))
		instance_destroy();
}
