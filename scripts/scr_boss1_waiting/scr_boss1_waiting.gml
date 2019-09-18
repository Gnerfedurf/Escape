//randomize
randomize();

//next attack
if (waitcounter >= waitcountermax) {
	image_speed = .7;
	rnd = irandom(2);
	if (rnd == 2 && obj_stats.enemies > 8) {
		rnd = 1;
	}
	switch (rnd) {
		case 0:
			sprite_index = sp_boss1_attacking1;
			state = scr_boss1_attacking1;
			break;
		case 1:
			sprite_index = sp_boss1_attacking2;
			state = scr_boss1_attacking2;
			break;
		case 2:
			sprite_index = sp_boss1_attacking3;
			state = scr_boss1_attacking3;
			break;
	}
	waitcounter = 0;
}
else {
	sprite_index = sp_boss1_waiting;
	waitcounter++;
}