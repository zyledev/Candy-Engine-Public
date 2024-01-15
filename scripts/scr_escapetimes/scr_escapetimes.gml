function scr_escapetimes(argument0)
{
	var time_array;
	if (argument0 == undefined)
		argument0 = room;
	var seconds = 0;
	var minutes = 0;
	switch (argument0)
	{
		case steamy_12:
			minutes = 4;
			seconds = 0;
			break;
		case entryway_10:
			minutes = 2;
			seconds = 30;
			break;
		case molasses_10:
			minutes = 3;
			seconds = 0;
			break;
		case mines_10:
			minutes = 5;
			seconds = 0;
			break;
		default:
			minutes = 0;
			seconds = 10;
			break;
	}
	time_array[0] = minutes;
	time_array[1] = seconds;
	return time_array;
}
