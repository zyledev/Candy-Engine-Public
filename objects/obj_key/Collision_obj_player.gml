if (!inv_frame && obj_player.state != states.knightpep && obj_player.state != states.cheeseball && obj_player.state != states.boxxedpep && obj_player.state != states.cheesepep && obj_player.state != 18 && obj_player.state != 11 && obj_player.state != states.hurt)
{
	instance_destroy();
	global.key_inv = true;
	obj_player.key_particles = true;
	obj_player.alarm[7] = 30;
}
if (!global.keyget && obj_player.state != states.knightpep && obj_player.state != 18 && obj_player.state != states.boxxedpep && obj_player.state != states.cheesepep && obj_player.state != 11)
{
	scr_sound(sound_toppingot);
	obj_player.state = states.keyget;
	obj_player.image_index = 0;
	global.keyget = true;
}
