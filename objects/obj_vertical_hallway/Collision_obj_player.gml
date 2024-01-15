if (pos_x == undefined)
	pos_x = other.x;
with (other.id)
{
	x = other.pos_x;
	y = other.y + ((other.sprite_height / 2) * sign(other.image_yscale));
	var xpos_difference = point_distance(id.x, 0, other.id.x, 0);
	var xpos = xpos_difference / other.image_xscale;
	var xpos_offset = xpos * other.hallwayxscale;
	targetDoor = other.targetDoor;
	targetRoom = other.targetRoom;
	vertical = true;
	verticaloffset = xpos_offset;
	hallwaydirection = sign(other.image_yscale);
	if (!instance_exists(obj_fadeout))
		instance_create(x, y, obj_fadeout);
}
