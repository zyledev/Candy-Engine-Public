if (go)
	hsp = 18;
else
	hsp = 0;
if (!place_meeting(x, y, obj_metalblock))
	scr_collide();
if (place_meeting(x, y, obj_minecartrail))
	vsp = 0;
if (place_meeting(x + 4, y, obj_metalblock))
	instance_destroy(obj_metalblock);
if (place_meeting(x - 4, y, obj_metalblock))
	instance_destroy(obj_metalblock);
if (animation_end() && sprite_index = spr_spraydie)
	instance_destroy();
