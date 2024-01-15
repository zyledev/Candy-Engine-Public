if (!instance_exists(ID))
	instance_destroy();
if (instance_exists(ID))
{
	x = ID.x;
	y = ID.y;
	image_xscale = ID.image_xscale;
	image_index = ID.image_index;
	if (ID.object_index == obj_charger)
	{
		sprite_index = spr_chargershitbox;
		mask_index = spr_chargershitbox;
	}
	with (ID)
	{
		if (object_index == obj_knight || 248 || object_index == obj_charger)
		{
			if (state != baddiestates.idle && state != baddiestates.walk)
			{
				hitboxcreate = false;
				instance_destroy(other.id);
			}
		}
		else if (object_index == obj_swedishfish && state != baddiestates.charge)
		{
			hitboxcreate = false;
			instance_destroy(other.id);
		}
	}
}
