function scr_tvsprites()
{
	switch obj_player.character {
		case "P":
			idletvspr = spr_pizzytv;
			escapetvspr = spr_pizzytv_escape1;
			tvchange1 = spr_pizzytv2;
			tvchange2 = spr_pizzytv3;
			cottontvspr = spr_pizzytvcotton;
			hurttvspr = spr_pizzytvhurt;
			minecarttvspr = spr_pizzytvmine;
			bombtvspr = spr_pizzytvbomb;
			firetvspr = spr_pizzytvfire;
			angrytvspr = spr_pizzytvangry;
			break;
			
		case "N":
			idletvspr = spr_pizzanotv;
			escapetvspr = spr_pizzytv_escape1;
			tvchange1 = spr_pizzanotv2;
			tvchange2 = spr_pizzanotv2;
			cottontvspr = spr_pizzytvcotton;
			break
	}

}