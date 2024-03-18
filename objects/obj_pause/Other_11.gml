var roomname = room_get_name(room);	
if (string_letters(roomname) == "steamy" || string_letters(roomname) = "steamysecret")
{
	instance_activate_all();
	with obj_player 
		targetDoor = "A";
	scr_playerreset();
	room = steamy_1;
	pause = false;
	

}
if (string_letters(roomname) == "entryway")
{
	instance_activate_all();
	with obj_player
			targetDoor = "A";
	scr_playerreset();
	room = entryway_1;
	pause = false;
	obj_player.targetDoor = "A";
}
else
	scr_sound(sound_enemythrow);
