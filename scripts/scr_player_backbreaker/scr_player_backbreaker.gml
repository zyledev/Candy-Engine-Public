function scr_player_backbreaker()
{
	if (sprite_index != spr_player_machfreefall)
	{
		hsp = 0;
		movespeed = 0;
	}
	else
		hsp = xscale * movespeed;
	landAnim = 0;
	if (sprite_index == spr_pizzelle_taunt || sprite_index == spr_gumbob_taunt || sprite_index == spr_player_supertaunt || sprite_index == spr_pizzano_taunt)
	{
		taunttimer--;
		vsp = 0;
	}
	if (sprite_index == spr_player_machfreefall && place_meeting(x, y + 1, obj_solid))
	{
		state = states.machslide;
		sprite_index = spr_player_crouchslide;
	}
	if (sprite_index == spr_pizzelle_taunt || sprite_index == spr_gumbob_taunt || sprite_index == spr_player_supertaunt || sprite_index == spr_pizzano_taunt)
	{
		if (!instance_exists(parryid))
		{
			with (instance_create(x, y, obj_parryhitbox))
			{
				other.parryid = id;
				image_xscale = other.xscale;
			}
		}
	}
	if (global.combo >= 4 && global.roomsave == 0)
	{
		sprite_index = spr_player_supertaunt;
		instance_create(x, y, obj_supertaunthitbox);
	}
	if (taunttimer == 0 && (sprite_index == spr_pizzelle_taunt || sprite_index == spr_gumbob_taunt || sprite_index == spr_player_supertaunt || sprite_index == spr_pizzano_taunt))
	{
		movespeed = tauntstoredmovespeed;
		sprite_index = tauntstoredsprite;
		state = tauntstoredstate;
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_eatspaghetti)
		state = states.normal;
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && !place_meeting(x, y, obj_exitgate))
	{
		global.panic = 1;
		sprite_index = spr_bossintro;
		image_index = 0;
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && place_meeting(x, y, obj_exitgate))
		state = states.normal;
	if (floor(image_index) == (image_number - 1) && (sprite_index == spr_player_levelcomplete || sprite_index == spr_playerN_victory))
		state = states.normal;
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_bossintro)
		state = states.normal;
	if (sprite_index == spr_bossintro)
	{
		var lay_id = layer_get_id("Backgrounds_1");
		var back_id = layer_background_get_id(lay_id);
		var lay_id2 = layer_get_id("Backgrounds_2");
		var back_id2 = layer_background_get_id(lay_id2);
		var lay_id3 = layer_get_id("Backgrounds_3");
		var back_id3 = layer_background_get_id(lay_id3);
		// these ID's do not exist, if youre having a genuine issue with this, make a report.
		if (global.panic == 1 && layer_background_get_sprite(back_id) == 819) // 819
			layer_background_sprite(back_id, 821); // 821
		if (global.panic == 1 && layer_background_get_sprite(back_id) == 834) // 834
			layer_background_sprite(back_id, 833); // 833
		if (global.panic == 1 && layer_background_get_sprite(back_id) == 831) // 831
			layer_background_sprite(back_id, 832); // 832
		if (global.panic == 1 && layer_background_get_sprite(back_id3) == 836) // 836
			layer_background_sprite(back_id3, 837); // 837
		if (global.panic == 1 && layer_background_get_sprite(back_id) == 810) // 810
			layer_background_sprite(back_id, 811); // 811
		if (global.panic == 1 && layer_background_get_sprite(back_id) == 813) // 813
			layer_background_sprite(back_id, 814); // 814
		if (global.panic == 1 && layer_background_get_sprite(back_id2) == 815) // 815
			layer_background_sprite(back_id2, 816); // 816
		if (global.panic == 1 && layer_background_get_sprite(back_id) == 857) // 857
			layer_background_sprite(back_id, 858); // 858
		if (global.panic == 1 && layer_background_get_sprite(back_id2) == 855) // 855
			layer_background_sprite(back_id2, 856); // 856
		if (global.panic == 1 && layer_background_get_sprite(back_id3) == 853) // 853
			layer_background_sprite(back_id3, 854); // 854
		obj_tv.showtext = 1;
		obj_tv.message = "GET BACK TO THE START!!";
		obj_tv.alarm[0] = 150;
	}
	if (sprite_index != spr_player_taunt)
		image_speed = 0.35;
	else if (sprite_index == spr_player_taunt)
		image_speed = 0;
}
