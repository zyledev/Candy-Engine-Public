if (ds_list_find_index(global.saveroom, room) == -1)
{
	_message = scr_roomnames(room);
	if (_message != -4)
	{
		showtext = true;
		alarm[0] = 200;
		ds_list_add(global.saveroom, room);
	}
}
