//randomize
randomize();
rnd = irandom(1);

//add stat
switch (rnd) {
	case 0:
		obj_stats.bossdmg++;
		break;
	case 1:
		obj_stats.bosshp++;
		break;
}