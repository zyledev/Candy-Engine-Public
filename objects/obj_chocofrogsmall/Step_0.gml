if (place_meeting(x + 1, y, obj_player) && obj_player.sprite_index == spr_cotton_attack)
{
	instance_destroy();
	with (instance_create(x, y, obj_sausageman_dead))
		sprite_index = spr_chocofrogsmall;
	instance_create(x, y, obj_poofeffect);
}
if (place_meeting(x - 1, y, obj_player) && obj_player.sprite_index == spr_cotton_attack)
{
	instance_destroy();
	with (instance_create(x, y, obj_sausageman_dead))
		sprite_index = spr_chocofrogsmall;
	instance_create(x, y, obj_poofeffect);
}
if (place_meeting(x, y + 1, obj_player) && obj_player.sprite_index == spr_cotton_drill)
{
	instance_destroy();
	with (instance_create(x, y, obj_sausageman_dead))
		sprite_index = spr_chocofrogsmall;
	instance_create(x, y, obj_poofeffect);
}
if (place_meeting(x, y - 1, obj_player) && obj_player.sprite_index == spr_cotton_drill)
{
	instance_destroy();
	with (instance_create(x, y, obj_sausageman_dead))
		sprite_index = spr_chocofrogsmall;
	instance_create(x, y, obj_poofeffect);
}
// this code can be optimized thats all im going to say
