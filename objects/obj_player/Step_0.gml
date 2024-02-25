scr_getinput();
scr_characterspr();
scr_playerstate();
with (obj_player)
{
	if (room == realtitlescreen || room == scootercutsceneidk)
		state = states.titlescreen;
	if (grounded)
		groundedcot = true;
	if (state != states.gameover && y > (room_height * 1.1) && room != outer_room2)
	{
		x = roomstartx;
		y = roomstarty;
	}
	if (state = states.gameover && sprite_index == spr_deathend && y > (room_height + 400))
		game_restart();
	if (!instance_exists(baddiegrabbedID) && (state = states.grab || (state = states.superslam && sprite_index != spr_piledriverland) || state = states.charge))
		state = states.normal;
	if (!(state = states.grab || state = states.charge || state = states.superslam || state = states.finishingblow))
		baddiegrabbedID = -4;
	if (character == "P")
	{
		if (anger = 0)
			angry = false;
		if (anger > 0)
		{
			angry = true;
			anger -= 1;
		}
	}
	if (angry && sprite_index = spr_idle)
		sprite_index = spr_player_3hpidle;
	scr_playersounds();
	if (state = states.machroll)
	{
		if (!audio_is_playing(sound_tumble))
			scr_sound(sound_tumble);
	}
	else
		audio_stop_sound(sound_tumble);
	if (sprite_index = spr_player_winding && state != states.normal)
		windingAnim = 0;
	else
		audio_stop_sound(sound_superjumpcharge2);
	if (state = states.cottonroll && sprite_index = spr_cotton_run)
	{
		if (!audio_is_playing(sound_customdash1))
			scr_sound(sound_customdash1);
	}
	else
		audio_stop_sound(sound_customdash1);
	if (state = states.cottonroll && sprite_index == spr_cotton_maxrun)
	{
		if (!audio_is_playing(sound_customdash2))
			scr_sound(sound_customdash2);
	}
	else
		audio_stop_sound(sound_customdash2);
	if (suplexmove && scr_solid(x, y + 1))
	{
		suplexmove = false;
		flash = true;
	}
	if (obj_player.state != states.handstandjump)
		grav = 0.5;
	if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
		instance_create(x + random_range(-5, obj_pass), y + 46, obj_vomit);
	if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
	{
		with (instance_create(x + random_range(-5, obj_pass), y + 46, obj_vomit))
			sprite_index = spr_vomit2;
	}
	if (angry && !instance_exists(obj_angrycloud) && obj_player.state = states.normal)
		instance_create(x, y, obj_angrycloud);
	if (!global.combomode)
	{
		if (global.combotime > 0)
			global.combotime -= 0.5;
		if (global.combotime == 0 && global.combo != 0)
			global.combo = 0;
	}
	if (global.combomode)
	{
		if (global.combofreeze > 0)
			global.combofreeze -= 0.1;
		if (global.combotime > 0 && global.combofreeze = 0)
			global.combotime -= 0.5;
		if (global.combotime == 0 && global.combo != 0 && global.combofreeze = 0)
			global.combo = 0;
	}
	if (input_buffer_jump < 8)
		input_buffer_jump++;
	if (input_buffer_secondjump < 8)
		input_buffer_secondjump++;
	if (input_buffer_highjump < 8)
		input_buffer_highjump++;
	if (key_particles)
		instance_create(random_range(x + 25, x - 25), random_range(y + 35, y - 25), obj_keyeffect);
	if (inv_frames = 0 && !hurted)
		image_alpha = 1;
	if (state = states.mach2 || state = states.charge || state = states.skateboard || state = states.knightpep || state = states.boxxedpep || state = states.cheesepep || state = states.knightpepslopes || state = states.knightpepattack || state = states.bombpep || state = states.facestomp || state = states.facestomp || state = 27 || state = states.machroll || state = states.mach3 || state = states.freefall || state = states.Sjump)
		attacking = true;
	else
		attacking = false;
	if (state = states.Throw || state = states.punch || state = states.backkick || state = states.shoulder || state = states.uppunch)
		grabbing = true;
	else
		grabbing = false;
	if ((state = states.mach3 || state = states.Nhookshot || state = states.skateboard || state = 28 || state = states.freefall || state = states.Sjump || state = states.machroll || state = states.machfreefall || state = states.charge || (state = states.superslam && sprite_index = spr_piledriver) || (state = states.superslam && sprite_index = spr_player_piledriverstart) || state = states.knightpep || state = states.knightpepattack || state = states.knightpepslopes || state = states.boxxedpep || state = states.cheesepep || state = states.cheeseball) || state = states.uppercut)
		instakillmove = true;
	else
		instakillmove = false;
	if (flash && alarm[0] <= 0)
		alarm[0] = 0.15 * room_speed;
	if (state != states.mach3 && state != states.machslide)
		autodash = false;
	if ((state != states.jump && state != states.crouchjump && state != states.slap) || vsp < 0)
		fallinganimation = 0;
	if (state != states.freefallland && state != states.normal && state != states.machslide)
		facehurt = false;
	if (state != states.normal && state != states.machslide)
		machslideAnim = false;
	if (state != states.normal)
	{
		idle = 0;
		dashdust = false;
	}
	if (state != states.mach1 && state != states.jump && state != states.Nhookshot && state != states.handstandjump && state != states.normal && state != states.mach2 && state != states.mach3 && state != states.freefallprep && state != states.knightpep && state != states.shotgun && state != 11)
		momemtum = false;
	if (state != states.Sjump && state != states.Sjumpprep)
		a = 0; // oh god
	if (state != states.facestomp)
		facestompAnim = false;
	if (state != states.freefall && state != states.facestomp && state != states.superslam && state != states.freefallland)
		superslam = 0;
	if (state != states.mach2)
		machpunchAnim = false;
	if (state != states.jump)
		ladderbuffer = 0;
	if (state != states.jump)
		stompAnim = false;
	if (toomuchalarm1 > 0)
		toomuchalarm1 -= 1;
	if (toomuchalarm1 <= 0 && (state = states.mach3 || state = states.Nhookshot || state = states.mach2 || state = states.charge || (state = states.machslide && mach2 >= 100) || state = states.machroll || state = states.handstandjump || state = states.cottondrill || state = states.cottonroll || state = states.minecart || (state = states.chainsaw && mach2 >= 100)))
	{
		with (instance_create(x, y, obj_mach3effect))
		{
			playerid = other.object_index;
			image_index = other.image_index - 1;
			image_xscale = other.xscale;
			sprite_index = other.sprite_index;
		}
		toomuchalarm1 = 6;
	}
	if (state != states.bump && state != states.crouch && state != states.boxxedpep && state != states.pistol && state != states.tumble && sprite_index != spr_player_crouchshoot && state != states.Sjumpprep && state != states.chainsaw && state != states.machroll && state != states.hurt && state != states.crouchslide && state != states.crouchjump)
		mask_index = spr_player_mask;
	else
		mask_index = spr_crouchmask;
	if (state = states.gottreasure || sprite_index = spr_knightpep_start || sprite_index = spr_knightpep_thunder || state = states.keyget || state = states.door || state = states.victory || state = states.comingoutdoor || state = states.gameover)
		cutscene = true;
	else
		cutscene = false;
	if (state != states.hurt)
		hurtsound = 0;
	if (((place_meeting(x, y, obj_door) && !place_meeting(x, y, obj_doorblocked)) || place_meeting(x, y, obj_keydoorclock) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic)) && !instance_exists(obj_uparrow) && scr_solid(x, y + 1) && state =0)
		instance_create(x, y, obj_uparrow);
	if (state = states.mach2 && !instance_exists(obj_speedlines))
		instance_create(x, y, obj_speedlines);
}
scr_collide_destructibles();
if (state != states.titlescreen && state != states.door && state != states.Sjump && state != states.comingoutdoor && state != states.boulder && state != states.keyget && state != states.victory && state != states.portal && state != states.timesup && state != states.gottreasure && state != states.gameover && state != states.door)
	scr_collide_player();
if (state = states.boulder)
	scr_collide_player();
if (state != states.bushdisguise)
	bushdetection = false;
if (state != states.crouch)
	crouchjumptimer = 0;
if (global.combomode)
{
	if (global.combo >= 5 && global.combotime <= 0.5)
		breakdanceammo += 1;
}
if (gumbobpropellercooldown > 0)
	gumbobpropellercooldown--;
if (global.starrmode)
{
	if (global.starrmode && state == states.mach3) // I swear this second if statement is just sugary dev shenanigans
		movespeed = 12;
	else if (state = states.mach3 && movespeed > 12)
		movespeed = 12;
}
if (state = states.door || place_meeting(x, y, obj_hallway) || state = states.victory)
	global.roomsave = false;
if (state == states.finishingblow && !animation_end())
{
	with (instance_place(x, y, obj_baddie))
		vsp = 0;
	grav = 0;
}
if (state = states.finishingblow && floor(image_index) = (image_number - 0))
{
	with (instance_place(x, y, obj_baddie))
		vsp = 0.1;
	grav = 0.5;
}
if (place_meeting(x, y, obj_molasseswater))
	grav = 0.35;
else if (!place_meeting(x, y, obj_molasseswater))
	grav = 0.5;
if (Dashpad_buffer > 0)
	Dashpad_buffer = max(Dashpad_buffer - 1, 0);
if (sprite_index == spr_player_machpunch1 && animation_end())
	sprite_index = spr_mach;
if (sprite_index == spr_player_machpunch2 && animation_end())
	sprite_index = spr_mach;
