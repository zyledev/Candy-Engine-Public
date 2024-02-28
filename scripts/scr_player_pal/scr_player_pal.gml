function scr_player_pal()
{
	move = key_left2 + key_right2;
	if move = 1
	{
		if paletteselect < 12
		{
			instance_create_depth(obj_palexample.x, obj_palexample.y, -6, obj_poofeffect);
			paletteselect++;
			with obj_palexample
			{
				sprite_index = spr_pizzelleselectedpal;
				image_index = 0;
			}
		}
	}
	else if move = -1
	{
		if paletteselect > 1
		{
			instance_create_depth(obj_palexample.x, obj_palexample.y, -6, obj_poofeffect);
			paletteselect--;
			with obj_palexample
			{
				sprite_index = spr_pizzelleselectedpal;
				image_index = 0;
			}
		}
	}
	if key_jump2
	{
		state = states.normal;
		targetRoom = hub_room1;
		targetDoor = "C";
		instance_create(x, y, obj_fadeout);
	}
	sprite_index = spr_idle;
}
