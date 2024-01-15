if (abletomove)
{
	if (-obj_player.key_left2 && selected > 0)
	{
		scr_sound(sound_step);
		selected--;
	}
	if (obj_player.key_right2 && selected < 2)
	{
		scr_sound(sound_step);
		selected++;
	}
}
if (obj_player.key_jump2 && selected == 0 && obj_file1.sprite_index != spr_file1confirm)
{
	scr_sound(sound_toppingot);
	abletomove = false;
	obj_file1.image_index = 0;
	obj_file1.sprite_index = spr_file1confirm;
}
if (obj_player.key_jump2 && selected == 1 && !instance_exists(obj_options))
{
	scr_sound(sound_toppingot);
	abletomove = false;
	instance_create(0, 0, obj_options);
}
var justfarded = 0;
switch (selected)
{
	case 0:
		justfarded = 96;
		break;
	case 1:
		justfarded = 480;
		break;
	case 2:
		justfarded = 828;
		break;
}
lightX = lerp(lightX, justfarded, 0.2);
