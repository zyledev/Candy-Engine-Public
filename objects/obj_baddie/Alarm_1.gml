var a = random_range(-20, 20);
if (state == baddiestates.stun && hsp != 0 && thrown)
	alarm[1] = 5;
instance_create(x + a, y + a, obj_machalleffect);
