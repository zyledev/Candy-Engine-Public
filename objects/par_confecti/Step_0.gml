if (obj_player.x != x)
	drawxscale = -sign(x - obj_player.x);
switch (state)
{
	case confectistates.normal: // 0
		scr_confecti_normal();
		break;
	case confectistates.taunt: // 1
		scr_confecti_taunt();
		break;
	case confectistates.appear: // 2
		scr_confecti_appear();
		break;
}
if (room == rank_room)
	visible = false;
