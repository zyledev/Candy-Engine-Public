if (place_meeting(x, y, obj_molasseswater))
	sprite_index = spr_geyserreact;
if (sprite_index == spr_geyserreact)
	mask_index = spr_null;
if (sprite_index == spr_geyserreact && floor(image_index) == (image_number - 1))
{
	image_alpha -= 0.1;
	sprite_index = spr_geyser;
}
if (sprite_index == spr_geyser)
	image_alpha -= 0.1;
if (image_alpha <= 0)
	instance_destroy();
