if (global.panic && state != baddiestates.cherrywait2)
{
	instance_destroy();
	instance_create(x, y, obj_bombexplosion);
	obj_player.state = states.bombpep;
	obj_player.bombpeptimer = 0;
	obj_player.sprite_index = spr_bombpep_end;
	instance_create(x, y, obj_bombexplosioncherry);
}
