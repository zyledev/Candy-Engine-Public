if (place_meeting(x, y + 1, obj_player) || place_meeting(x, y - 1, obj_player) || place_meeting(x - 1, y, obj_player) || place_meeting(x + 1, y, obj_player))
{
	if ((place_meeting(x + 1, y, obj_player) || place_meeting(x - 1, y, obj_player)) && (obj_player.state == states.mach3 || obj_player.state == states.knightpep || obj_player.state == 11 || obj_player.state == states.Nhookshot || obj_player.state == states.machroll || obj_player.state == states.machpizzano || obj_player.state == states.minecart || (obj_player.state == states.knightpep && obj_player.momemtum)))
		instance_destroy();
	if (place_meeting(x, y - 1, obj_player) && (obj_player.state = states.knightpep || obj_player.state = states.Nhookshot || (global.cane && obj_player.sprite_index == obj_player.spr_caneslam)))
		instance_destroy();
	if (place_meeting(x, y + 40, obj_player) && obj_player.state == states.Sjump)
		instance_destroy();
	if (place_meeting(x, y - 1, obj_player) && obj_player.state == states.freefallland && obj_player.metal > 10)
		instance_destroy();
	if (place_meeting(x + obj_player.hsp, y, obj_player) && obj_player.sprite_index == spr_null)
		instance_destroy();
	if (place_meeting(x - obj_player.hsp, y, obj_player) && obj_player.sprite_index == spr_null)
		instance_destroy();
}
