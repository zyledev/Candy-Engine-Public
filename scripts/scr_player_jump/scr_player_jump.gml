function scr_player_jump()
{
	move = key_left + key_right;
	if !momemtum
		hsp = move * movespeed;
	else
		hsp = xscale * movespeed;
	if move != xscale && momemtum && movespeed != 0
		movespeed -= 0.1;
	if movespeed == 0
		momemtum = false;
	if (move == 0 && !momemtum) || scr_solid(x + hsp, y)
	{
		movespeed = 0;
		mach2 = 0;
	}
	if move != 0 && movespeed < 7
		movespeed += 0.5;
	if movespeed > 7
		movespeed -= 0.1;
	if (scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move = -1)
		movespeed = 0;
	if dir != xscale
	{
		mach2 = 0;
		dir = xscale;
		movespeed = 0;
	}
	if move == -xscale
	{
		mach2 = 0;
		movespeed = 0;
		momemtum = false;
	}
	landAnim = true;
	if !key_jump2 && !jumpstop && vsp < 0.5 && !stompAnim
	{
		vsp /= 5;
		jumpstop = true;
	}
	if ladderbuffer > 0
		ladderbuffer--;
	if scr_solid(x, y - 1) && !jumpstop && jumpAnim
	{
		vsp = grav;
		jumpstop = true;
	}
	if grounded && input_buffer_jump < 8 && !key_down && !key_attack && vsp > 0 && !(sprite_index = spr_player_facestomp || sprite_index = spr_player_freefall)
	{
		scr_sound(sound_jump);
		sprite_index = spr_jump;
		if shotgunAnim
			sprite_index = spr_shotgun_jump;
		instance_create_depth(x, y, -6, obj_highjumpcloud2);
		stompAnim = false;
		vsp = -11;
		state = states.jump;
		jumpAnim = true;
		jumpstop = false;
		image_index = 0;
		freefallstart = false;
		instance_create_depth(x, y, 0, obj_landcloud);
	}
	if key_attack && grounded && fallinganimation < 40 && character = "P"
	{
		mach2 = 0;
		movespeed = 0;
		sprite_index = spr_mach1;
		jumpAnim = true;
		state = states.mach1;
		image_index = 0;
	}
	if key_attack && grounded && fallinganimation < 40 && character = "DEEZNUTS"
	{
		mach2 = 0;
		movespeed = 0;
		sprite_index = spr_null;
		jumpAnim = true;
		state = states.machpizzano;
		image_index = 0;
	}
	if grounded && vsp > 0 && !key_attack
	{
		if key_attack
			landAnim = false;
		input_buffer_secondjump = 0;
		state = states.normal;
		jumpAnim = true;
		jumpstop = false;
		image_index = 0;
		freefallstart = false;
		instance_create_depth(x, y, 0, obj_landcloud);
		scr_sound(sound_step);
	}
	if grounded && (sprite_index == spr_player_facestomp || sprite_index = spr_player_freefall || sprite_index = spr_player_freefall2)
	{
		scr_sound(sound_maximumspeedland);
		with obj_baddie
		{
			if point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0))
			{
				vsp = -7;
				hsp = 0;
			}
		}
		with obj_camera
		{
			shake_mag = 10;
			shake_mag_acc = 30 / room_speed;
		}
		image_index = 0;
		state = states.freefallland;
		sprite_index = spr_player_freefallland;
	}
	if key_jump
		input_buffer_jump = 0;
	if character == "P"
	{
		if vsp > 5
			fallinganimation++;
		if fallinganimation >= 40 && fallinganimation < 80
			sprite_index = spr_player_freefall;
		if fallinganimation >= 80
			sprite_index = spr_player_freefall2;
	}
	if !stompAnim
	{
		if jumpAnim
		{
			if animation_end()
				jumpAnim = false;
		}
		if !jumpAnim
		{
			if sprite_index == spr_airdash1
				sprite_index = spr_airdash2;
			if sprite_index == spr_jump
				sprite_index = spr_fall;
		}
	}
	if stompAnim
	{
		if sprite_index == spr_stompprep && animation_end()
			sprite_index = spr_stomp;
	}
	if character == "P" && (key_attack && sprite_index != spr_airdash2 && sprite_index != spr_airdash1 && fallinganimation < 40 && sprite_index != spr_playerN_glide)
	{
		stompAnim = false;
		sprite_index = spr_airdash1;
		image_index = 0;
	}
	if key_slap2 && shotgunAnim && global.ammo > 0
	{
		global.ammo -= 1;
		vsp -= 11;
		sprite_index = spr_player_shotgunjump1;
		state = states.shotgun;
		image_index = 0;
	}
	if move != 0
		xscale = move;
	image_speed = 0.35;
	if key_slap2 && shotgunAnim && !instance_exists(obj_cutscene_upstairs)
	{
		global.ammo -= 1;
		sprite_index = spr_shotgun_shootair;
		state = states.shotgun;
		image_index = 0;
	}
	if !key_down && key_slap2 && !suplexmove && !shotgunAnim && !global.cane && sprite_index != spr_airdash1 && sprite_index != spr_airdash2
	{
		scr_sound(sound_suplex1);
		instance_create(x, y, obj_slaphitbox);
		suplexmove = true;
		vsp = 0;
		instance_create(x, y, obj_jumpdust);
		image_index = 0;
		sprite_index = spr_suplexdash;
		state = states.handstandjump;
		if character == "DEEZNUTS"
			vsp = -5;
	}
	if key_taunt2
	{
		taunttimer = 20;
		tauntstoredmovespeed = movespeed;
		tauntstoredsprite = sprite_index;
		tauntstoredstate = state;
		state = states.backbreaker;
		image_index = random_range(0, 7);
		sprite_index = spr_player_taunt;
		instance_create(x, y, obj_taunteffect);
	}
	if key_down2 && !global.cane
	{
		image_index = 0;
		state = states.freefallprep;
		sprite_index = spr_player_bodyslamstart;
		vsp = -5;
	}
	if global.cane
	{
		if !grounded
			canrebound = false;
		if key_down2
		{
			image_index = 0;
			state = states.freefall;
			sprite_index = spr_caneslam;
			vsp = -18;
		}
		if !key_down && key_slap2 && !suplexmove && !shotgunAnim
		{
			scr_sound(sound_suplex1);
			instance_create(x, y, obj_slaphitbox);
			suplexmove = true;
			vsp = 0;
			instance_create(x, y, obj_jumpdust);
			image_index = 0;
			sprite_index = spr_canesuplex;
			state = states.handstandjump;
		}
	}
	if sprite_index == spr_caneslam
	{
		vsp = 17;
		if !instance_exists(obj_mach3effect)
			instance_create(x, y - 32, obj_mach3effect);
	}
	if key_jump && character == "G" && !grounded && gumbobpropellercooldown = 0
	{
		state = states.gumbobpropeller;
		sprite_index = spr_gumbob_propeller_start;
		movespeed = 0;
		vsp = 0;
	}
	if key_attack2 && character == "C"
	{
		vsp -= 4;
		image_index = 0;
		sprite_index = spr_coneboy_dive;
		state = states.coneboydive;
	}
}
