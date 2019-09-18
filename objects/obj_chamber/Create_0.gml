//add harder levels
if (obj_stats.level < 6) {
	difficulty = 4;
}
else if (obj_stats.level < 11) {
	difficulty = 9;
}
else {
	difficulty = 14;
}

//random obstacles
randomize();
setnum = irandom(difficulty);
switch(setnum) {
	case 0:
		set = scr_set1;
		enemyset = scr_set1_spawning;
		break;
	case 1:
		set = scr_set2;
		enemyset = scr_set2_spawning;
		break;
	case 2:
		set = scr_set3;
		enemyset = scr_set3_spawning;
		break;
	case 3:
		set = scr_set4;
		enemyset = scr_set4_spawning;
		break;
	case 4:
		set = scr_set5;
		enemyset = scr_set5_spawning;
		break;
	case 5:
		set = scr_set6;
		enemyset = scr_set6_spawning;
		break;
	case 6:
		set = scr_set7;
		enemyset = scr_set7_spawning;
		break;
	case 7:
		set = scr_set8;
		enemyset = scr_set8_spawning;
		break;
	case 8:
		set = scr_set9;
		enemyset = scr_set9_spawning;
		break;
	case 9:
		set = scr_set10;
		enemyset = scr_set10_spawning;
		break;
	case 10:
		set = scr_set11;
		enemyset = scr_set11_spawning;
		break;
	case 11:
		set = scr_set12;
		enemyset = scr_set12_spawning;
		break;
	case 12:
		set = scr_set13;
		enemyset = scr_set13_spawning;
		break;
	case 13:
		set = scr_set14;
		enemyset = scr_set14_spawning;
		break;
	case 14:
		set = scr_set15;
		enemyset = scr_set15_spawning;
		break;
}
script_execute(set);

//Variables
cleared = false;
enemiesspawned = false;
