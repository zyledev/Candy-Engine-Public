with (other.id)
{
	x = other.x;
	y = other.y + (other.sprite_height - 46);
	if (!instance_exists(obj_fadeout))
	{
		obj_player.targetDoor = other.targetDoor;
		obj_player.targetRoom = other.targetRoom;
		obj_player.hallway = true;
		obj_player.hallwaydirection = other.image_xscale;
		obj_player.x = obj_player.x;
		obj_player.y = obj_player.y;
		other.visited = true;
		image_index = 0;
		instance_create(x, y, obj_fadeout);
	}
}
