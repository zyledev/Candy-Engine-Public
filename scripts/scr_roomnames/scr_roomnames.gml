function scr_roomnames()
{
	if argument0 = undefined
		argument0 = room;
	var room_name = -4;
    switch (argument0)
    {
        case realtitlescreen:
            room_name = "Welcome To Sugary Spire!"
            break;
        case hub_room1:
            room_name = "Enjoy Your Stay"
            break;
        case entrywaysecret_1:
            room_name = "Gumslime Paradise"
            break;
        case entrywaysecret_2:
            room_name = "Wet Floor"
            break;
        case entrywaysecret_3:
            room_name = "Fine China"
            break;
        case entryway_1:
            room_name = "Operation Crunch Creak Construct"
            break;
        case entryway_2:
            room_name = "Hard Hat Required"
            break;
        case entryway_3:
            room_name = "Orange City"
            break;
        case entryway_4:
            room_name = "Construction Conglomerate"
            break;
        case entryway_5:
            room_name = "Had A Joke But I'm Still Working On It"
            break;
        case entryway_6:
            room_name = "Down And Around"
            break;
        case entryway_7:
            room_name = "Wires And Boxes"
            break;
        case entryway_8:
            room_name = "City Outskirts"
            break;
        case entryway_9:
            room_name = "Nailed It"
            break;
        case entryway_10:
            room_name = "Beary Careful"
            break;
        case steamy_secret1:
            room_name = "Rocky Road"
            break;
        case steamy_secret2:
            room_name = "Digging For Cotton"
            break;
        case steamy_secret3:
            room_name = "Kick Gum And Chew Gum"
            break;
        case steamy_1:
            room_name = "Welcome to Cottontown!"
            break;
        case steamy_2:
            room_name = "Scary Monsters Nice Sights"
            break;
        case steamy_3:
            room_name = "Boiler Room"
            break;
        case steamy_4:
            room_name = "Cakewalk"
            break;
        case steamy_5:
            room_name = "Steamy Cotton Candy"
            break;
        case steamy_6:
            room_name = "Skyhigh"
            break;
        case steamy_7:
            room_name = "Grand Gateau"
            break;
        case steamy_8:
            room_name = "A Clockwork Worm"
            break;
        case steamy_9:
            room_name = "Clocks And Candies"
            break;
        case steamy_10:
            room_name = "Race Around The Clock"
            break;
        case steamy_11:
            room_name = "Froghop"
            break;
        case steamy_12:
            room_name = "Pillars Break Room"
            break;
        case mines_1:
            room_name = "Sugary Spire Underground"
            break;
        case mines_2:
            room_name = "Excavation Site"
            break;
        case mines_3:
            room_name = "Miner Problem"
            break;
        case mines_4:
            room_name = "Jawbreaker Centre"
            break;
	}
	return room_name;
}
