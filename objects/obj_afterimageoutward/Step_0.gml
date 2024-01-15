if (playerid.state != states.mach3 && playerid.state != states.Nhookshot && playerid.state != states.charge && playerid.state != states.mach2 && playerid.state != states.handstandjump && playerid.state != states.machslide && playerid.state != states.slam && playerid.state != 28 && playerid.state != states.machfreefall && playerid.state != states.superslam && playerid.state != states.machroll && playerid.state != states.chainsaw && playerid.state != states.Sjump && playerid.state != states.parry && playerid.state != states.tumble && playerid.state != 125 && (playerid.state != states.jump && playerid.state != baddiestates.grabbed && playerid.state != states.machtumble && !global.cane && playerid.state != states.cottondrill))
	vanish = 1;
if (vanish == 1)
{
	if (gonealpha > 0)
		gonealpha -= 0.35;
	else if (gonealpha <= 0)
		instance_destroy();
}
visible = playerid.visible;
if (color == 1)
	realcol = make_color_rgb(232, 80, 152);
else if (color == 2)
	realcol = make_color_rgb(48, 168, 255);
