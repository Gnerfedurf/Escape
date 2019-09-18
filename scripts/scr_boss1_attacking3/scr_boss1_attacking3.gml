//spawn enemies
if (!spawned) {
	spawned = true;
	randomize();
	for (i = 0; i < 4; i++) {
		if (i < 2) {
			ypos = y + 128
		}
		else {
			ypos = y - 128
		}
		if (i == 0 || i == 3) {
			xpos = x + 128
		}
		else {
			xpos = x - 128
		}
		switch (irandom(4)) {
			case 0:
				spawn[i] = obj_enemy1;
				break;
			case 1:
				spawn[i] = obj_enemy2;
				break;
			case 2:
				spawn[i] = obj_enemy3;
				break;
			case 3:
				spawn[i] = obj_enemy4;
				break;
			case 4:
				spawn[i] = obj_enemy5;
				break;
		}
		instance_create_depth(xpos, ypos, -1, spawn[i]);
	}
}