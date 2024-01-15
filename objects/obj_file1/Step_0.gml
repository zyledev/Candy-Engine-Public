var asset = layer_sprite_get_id(layer_get_id("Assets_1"), "graphic_3493EB49");
layer_sprite_speed(asset, 0.35);
if (obj_mainfartselect.selected = 0)
{
	visible = true;
	layer_sprite_change(asset, spr_phonepicked);
}
else
{
	visible = false;
	layer_sprite_change(asset, spr_phone);
}
