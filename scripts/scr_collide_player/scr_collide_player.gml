function scr_collide_player()
{
	grounded = false;
	grinding = false;
	repeat (abs(vsp))
	{
		if !scr_solid_player(x, y + sign(vsp))
			y += sign(vsp);
		else
		{
			vsp = 0;
			break;
		}
	}
	repeat (abs(hsp))
	{
		if scr_solid_player(x + sign(hsp), y) && !scr_solid_player(x + sign(hsp), y - 1)
			y--;
		if !scr_solid_player(x + sign(hsp), y) && !scr_solid_player(x + sign(hsp), y + 1) && scr_solid_player(x + sign(hsp), y + 2)
			y++;
		if !scr_solid_player(x + sign(hsp), y)
			x += sign(hsp);
		else
		{
			hsp = 0;
			break;
		}
	}
	if vsp < 20
		vsp += grav;
	grounded = scr_solid_player(x, y + 1);
}
