//randomize
randomize();
rnd = irandom(4);

//add stat
switch (rnd) {
	case 0:
		obj_stats.dmg++;
		break;
	case 1:
		if (obj_stats.spd < 30) {
			obj_stats.spd++;
		}
		else {
			obj_stats.dmg++;
		}
		break;
	case 2:
		if (obj_stats.firerate > 1) {
			obj_stats.firerate--;
		}
		break;
	case 3:
		if (obj_stats.range < 200) {
			obj_stats.range += 5;
		}
		else {
			obj_stats.hp++;
		}
		break;
	case 4:
		obj_stats.hp++;
		break;
}