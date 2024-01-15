function scr_player_finishingblow()
{
	hsp = xscale * movespeed;
	if (movespeed > 0)
		movespeed -= 0.5;
	if (floor(image_index) >= (image_number - 1))
		state = states.normal;
	if (floor(image_index) >= 6 && !instance_exists(obj_swordhitbox))
	{
		scr_sound(sound_punch);
		scr_sound(sound_killingblow);
		instance_create(x, y, obj_swordhitbox);
		with (baddiegrabbedID)
		{
			hp = 0;
			thrown = true;
			if (other.sprite_index != spr_player_uppercutfinishingblow)
			{
				hsp = obj_player.xscale * 20;
				vsp = -6;
			}
			else
			{
				vsp = -20;
				hsp = 0;
			}
			state = baddiestates.stun;
			stunned = 500;
		}
	}
	if (floor(image_index) >= 0 && !instance_exists(obj_swordhitbox) && sprite_index == spr_player_swingdingend)
	{
		scr_sound(sound_punch);
		scr_sound(sound_killingblow);
		instance_create(x, y, obj_swordhitbox);
		with (baddiegrabbedID)
		{
			hp = 0;
			thrown = true;
			hsp = obj_player.xscale * 20;
			vsp = -6;
			state = baddiestates.stun;
			stunned = 500;
		}
	}
	image_speed = 0.35;
	landAnim = 0;
	vsp = 0;
	if (global.cane == 0)
		hsp = 0;
	if (global.cane == 1)
		hsp = -4 * xscale;
}
