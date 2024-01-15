if (sprite_index != spr_confectiboxopen)
{
	var _content = instance_create(x + (sprite_width / 2), y + (sprite_height / 2), BoxContent);
	if (object_get_parent(_content.object_index) == par_confecti)
	{
		with (instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_explosioneffect))
		{
			sprite_index = spr_taunteffect;
			depth = -2;
		}
		global.collect += 1000;
		if (global.combo >= 1)
			global.combofreeze += 10;
	}
	sprite_index = spr_confectiboxopen;
	image_index = 0;
}
