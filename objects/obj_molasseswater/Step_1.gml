if (y != targety)
{
	if (vsp == 0)
		vsp = 8 * sign(y - targety);
	y = approach(y, targety, abs(vsp));
}
else
{
	vsp = 0;
	_speed = undefined;
}
