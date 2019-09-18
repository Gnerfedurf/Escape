//randomize
randomize();
rnd = irandom(3);

//add stat
switch (rnd) {
	case 0:
		obj_stats.attackdmg++;
		break;
	case 1:
		obj_stats.beamdmg++;
		break;
	case 2:
		obj_stats.enemybonhp++;
		break;
	case 3:
		obj_stats.explodedmg++;
		break;
}