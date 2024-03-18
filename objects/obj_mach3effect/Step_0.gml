if (playerid.state != states.mach3 && playerid.state != states.Nhookshot && playerid.state != states.charge && playerid.state != states.mach2 && playerid.state != states.handstandjump && playerid.state != states.machslide && playerid.state != states.slam && playerid.state != 28 && playerid.state != states.machfreefall && playerid.state != states.superslam && playerid.state != states.minecart && playerid.state != states.machroll && playerid.state != states.chainsaw && playerid.state != states.Sjump && playerid.state != states.parry && playerid.state != states.tumble && playerid.state != 125 && (playerid.state != states.jump && playerid.state != states.uppercut && playerid.state != states.machtumble && !global.cane))
	vanish = true;
if (vanish)
{
	if (gonealpha > 0)
		gonealpha -= 0.35;
	else if (gonealpha <= 0)
		instance_destroy();
}
visible = playerid.visible;
if (color)
	realcol = make_color_rgb(232, 80, 152);
else if (color = 2)
	realcol = make_color_rgb(48, 168, 255);
