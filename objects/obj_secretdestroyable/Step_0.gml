if (place_meeting(x + obj_player.hsp, y, obj_player) && obj_player.sprite_index == spr_null && obj_player.state == states.Sjump)
	instance_destroy();
