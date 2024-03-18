var yoffset = 160;
var _door = 30;
with (obj_doortrigger_parent)
{
	if (other.targetDoor == id_door)
		_door = id;
}
if (instance_exists(_door))
{
	if (hallway == 1)
		x = _door.x + (hallwaydirection * 32);
	else if (vertical == 1)
		x = _door.x + verticaloffset;
	else if (box == 1)
		x = _door.x + 32;
	else
		x = _door.x + 16;
	if (vertical)
		y = _door.y + (hallwaydirection * yoffset);
	else
		y = _door.y - 14;
}
else
{
	x = room_width / 2;
	y = room_height / 2;
	show_debug_message("Door Trigger Instance not found");
}
hallway = 0;
box = 0;
roomstartx = x;
roomstarty = y;
