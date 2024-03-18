function scr_player_bombpep()
{
	if sprite_index == spr_bombpep_intro || sprite_index = spr_bombpep_end
		mask_index = spr_crouchmask;
	else
		mask_index = spr_player_mask;
	if place_meeting(x, y, obj_watertop)
		bombpeptimer = 0;
	if key_jump
		input_buffer_jump = 0;
	if !key_jump2 && !jumpstop && vsp < 0.5 && stompAnim = false
	{
		vsp /= 2;
		jumpstop = true;
	}
	if grounded && vsp > 0
		jumpstop = false;
	mach2 = 0;
	landAnim = false;
	scr_getinput();
	alarm[5] = 2;
	if sprite_index == spr_bombpep_intro && animation_end()
		sprite_index = spr_bombpep_run;
	if sprite_index == spr_bombpep_run || sprite_index = spr_bombpep_runabouttoexplode
	{
		if movespeed <= 8
			movespeed += 0.2;
		hsp = floor(xscale * movespeed);
	}
	else
	{
		hsp = 0;
		movespeed = 0;
	}
	if bombpeptimer < 20 && bombpeptimer != 0
		sprite_index = spr_bombpep_runabouttoexplode;
	if sprite_index == spr_bombpep_end && animation_end()
	{
		alarm[5] = 2;
		alarm[7] = 60;
		hurted = true;
		state = states.normal;
		sprite_index = spr_player_idle;
		image_index = 0;
	}
	if bombpeptimer <= 0 && sprite_index = spr_bombpep_runabouttoexplode
	{
		scr_sound(sound_explosion);
		hurted = true;
		instance_create(x, y, obj_bombexplosion);
		sprite_index = spr_bombpep_end;
	}
	if bombpeptimer > 0
		bombpeptimer -= 0.5;
	if scr_solid(x + 1, y) && xscale == 1 && hsp != 0 && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x + sign(hsp), y, obj_bombblock) && !place_meeting(x + sign(hsp), y, obj_chocofrogbig)
	{
		instance_create(x + 10, y + 10, obj_bumpeffect);
		xscale *= -1;
	}
	if scr_solid(x - 1, y) && xscale == -1 && hsp != 0 && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x + sign(hsp), y, obj_bombblock) && !place_meeting(x + sign(hsp), y, obj_chocofrogbig)
	{
		instance_create(x - 10, y + 10, obj_bumpeffect);
		xscale *= -1;
	}
	if input_buffer_jump < 8 && grounded && hsp != 0
		vsp = -9;
	if movespeed < 4
		image_speed = 0.35;
	else if movespeed > 4 && movespeed < 8
		image_speed = 0.45;
	else
		image_speed = 0.6;
	if hsp != 0 && floor(image_index) = 0 || floor(image_index) = 2 && steppy && grounded
		steppy = true;
	if (floor(image_index) != 0 && floor(image_index) != 2)
		steppy = false;
	if !instance_exists(obj_dashcloud) && grounded && hsp != 0
		instance_create(x, y, obj_dashcloud);
}
