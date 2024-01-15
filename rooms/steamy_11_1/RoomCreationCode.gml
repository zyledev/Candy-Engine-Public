var lay_id = layer_get_id("Backgrounds_1");
var back_id = layer_background_get_id(lay_id);
switch (global.panic)
{
	case false:
		layer_background_sprite(back_id, bg_clockparallax1);
		break;
	case true:
		layer_background_sprite(back_id, bg_clockparallaxescape);
		break;
}
