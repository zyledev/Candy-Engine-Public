scr_getinput();
if animation_end()
	image_speed = 0;
	
if (obj_player.character == "P")
{
	switch global.rank {
		
		case "s":
			sprite_index = spr_rankS;
			break;

		case "a":
			sprite_index = spr_rankA;
			break;

		case "b":
			sprite_index = spr_rankB;
			break;

		case "c":
			sprite_index = spr_rankC;
			break;

		case "d":
			sprite_index = spr_rankD;
			break;

		case "e":
			sprite_index = spr_rankS;
			break;
	
		default:
			sprite_index = spr_rankD;
			break;
	}
}
