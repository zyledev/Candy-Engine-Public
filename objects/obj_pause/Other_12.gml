if (room != rank_room && room != hub_room1 && room != hub_public && room != outer_room1 && room != outer_room2 && room != scootercutsceneidk)
{
	pause = false;
	instance_activate_all();
	room = hub_room1;
	with (obj_player)
	{
		scr_characterspr();
		state = states.normal;
	}
	scr_playerreset();
	global.cowboyhat = false;
	obj_tv.tvsprite = spr_tvoff;
	obj_player.targetDoor = "A";
}
else if (room = hub_room1 || room = hub_public || room = outer_room1 || room = outer_room2 || room = scootercutsceneidk)
	game_restart();
else
	scr_sound(sound_enemythrow);
