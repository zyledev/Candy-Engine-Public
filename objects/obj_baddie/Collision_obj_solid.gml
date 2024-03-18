if state != baddiestates.grabbed
	image_xscale = 1;
if (image_xscale == 1 && grounded && obj_player.state != states.finishingblow && obj_player.state != states.superslam)
	x += 2;
if (image_xscale == -1 && grounded && obj_player.state != states.finishingblow && obj_player.state != states.superslam)
	x -= 2;
