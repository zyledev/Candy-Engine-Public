with (obj_player)
{
	if (state != states.cotton && state != states.cottondrill && state != states.door && state != states.cottonroll && state != 112)
	{
		state = states.cotton;
		instance_create(x, y, obj_poofeffectcotton);
		sprite_index = spr_cottonidle;
	}
}
if (obj_player.state != states.cotton && obj_player.state != states.cottondrill && obj_player.state != states.door && obj_player.state != states.cottonroll && obj_player.state != 112)
	instance_create(obj_player.x, obj_player.y, obj_poofeffect);
