//random
randomize();

//create rooms
dir = irandom(3);
switch(dir) {
	case 0:
		chamberx += 2048;
		break;
	case 1:
		chambery += 1152;
		break;
	case 2:
		chamberx -= 2048;
		break;
	case 3:
		chambery -= 1152;
		break;
}
if (!position_meeting(chamberx, chambery, obj_chamber) && chamberx >= 0 && chambery >= 0 && chamberx < 10240 && chambery < 5760) {
	instance_create_depth(chamberx, chambery, 5, obj_chamber);
	chambercounter++;
	if (position_meeting(chamberx, chambery - 1152, obj_chamber)) {
		instance_create_depth(chamberx + 960, chambery, -1, obj_door_sensor_top);
		instance_create_depth(chamberx + 960, chambery - 128, -1, obj_door_sensor_down);
		instance_create_depth(chamberx + 960, chambery, -1, obj_door_top);
		instance_create_depth(chamberx + 960, chambery - 128, -1, obj_door_down);
	}
	if (position_meeting(chamberx, chambery + 1152, obj_chamber)) {
		instance_create_depth(chamberx + 960, chambery + 1024, -1, obj_door_sensor_down);
		instance_create_depth(chamberx + 960, chambery + 1152, -1, obj_door_sensor_top);
		instance_create_depth(chamberx + 960, chambery + 1024, -1, obj_door_down);
		instance_create_depth(chamberx + 960, chambery + 1152, -1, obj_door_top);
	}
	if (position_meeting(chamberx + 2048, chambery, obj_chamber)) {
		instance_create_depth(chamberx + 1920, chambery + 512, -1, obj_door_sensor_right);
		instance_create_depth(chamberx + 2048, chambery + 512, -1, obj_door_sensor_left);
		instance_create_depth(chamberx + 1920, chambery + 512, -1, obj_door_right);
		instance_create_depth(chamberx + 2048, chambery + 512, -1, obj_door_left);
	}
	if (position_meeting(chamberx - 2048, chambery, obj_chamber)) {
		instance_create_depth(chamberx, chambery + 512, -1, obj_door_sensor_left);
		instance_create_depth(chamberx - 128, chambery + 512, -1, obj_door_sensor_right);
		instance_create_depth(chamberx, chambery + 512, -1, obj_door_left);
		instance_create_depth(chamberx - 128, chambery + 512, -1, obj_door_right);
	}
} else {
	if (chamberx < 0) {
		chamberx = 0;
	}
	if (chambery < 0) {
		chambery = 0;
	}
	if (chamberx >= 10240) {
		chamberx = 8192;
	}
	if (chambery >= 5760) {
		chambery = 4608;
	}
	if (chambercounter >= minchambers) {
		while (endplaced == false) {
			dir = irandom(4);
			switch(dir) {
				case 0:
					if (!position_meeting(chamberx + 2048, chambery, obj_chamber) && !position_meeting(chamberx + 1920, chambery + 512, obj_startdoor_right)) {
						if (obj_stats.level % 5 == 0) {
							instance_create_depth(chamberx + 1920, chambery + 512, -1, obj_bossdoor_sensor_right);
							instance_create_depth(chamberx + 1920, chambery + 512, -1, obj_bossdoor_right);
						}
						else {
							instance_create_depth(chamberx + 1920, chambery + 512, -1, obj_enddoor_sensor_right);
							instance_create_depth(chamberx + 1920, chambery + 512, -1, obj_enddoor_right);
						}
						endplaced = true;
					}
					break;
				case 1:
					if (!position_meeting(chamberx, chambery - 1152, obj_chamber) && !position_meeting(chamberx + 960, chambery, obj_startdoor_top)) {
						if (obj_stats.level % 5 == 0) {
							instance_create_depth(chamberx + 960, chambery, -1, obj_bossdoor_sensor_top);
							instance_create_depth(chamberx + 960, chambery, -1, obj_bossdoor_top);
						}
						else {
							instance_create_depth(chamberx + 960, chambery, -1, obj_enddoor_sensor_top);
							instance_create_depth(chamberx + 960, chambery, -1, obj_enddoor_top);
						}
						endplaced = true;
					}
					break;
				case 2:
					if (!position_meeting(chamberx, chambery + 1152, obj_chamber) && !position_meeting(chamberx + 960, chambery + 1025, obj_startdoor_down)) {
						if (obj_stats.level % 5 == 0) {
							instance_create_depth(chamberx + 960, chambery + 1024, -1, obj_bossdoor_sensor_down);
							instance_create_depth(chamberx + 960, chambery + 1024, -1, obj_bossdoor_down);
						}
						else {
							instance_create_depth(chamberx + 960, chambery + 1024, -1, obj_enddoor_sensor_down);
							instance_create_depth(chamberx + 960, chambery + 1024, -1, obj_enddoor_down);
						}
						endplaced = true;
					}
					break;
				case 3:
					if (!position_meeting(chamberx - 2048, chambery, obj_chamber) && !position_meeting(chamberx, chambery + 512, obj_startdoor_left)) {
						if (obj_stats.level % 5 == 0) {
							instance_create_depth(chamberx, chambery + 512, -1, obj_bossdoor_sensor_left);
							instance_create_depth(chamberx, chambery + 512, -1, obj_bossdoor_left);
						}
						else {
							instance_create_depth(chamberx, chambery + 512, -1, obj_enddoor_sensor_left);
							instance_create_depth(chamberx, chambery + 512, -1, obj_enddoor_left);
						}
						endplaced = true;
					}
					break;
				case 4:
					if (obj_stats.level % 5 == 0) {
						instance_create_depth(chamberx + 960, chambery + 512, -1, obj_bossdoor_sensor_center);
						instance_create_depth(chamberx + 960, chambery + 512, -1, obj_bossdoor_center);
					}
					else {
						instance_create_depth(chamberx + 960, chambery + 512, -1, obj_enddoor_sensor_center);
						instance_create_depth(chamberx + 960, chambery + 512, -1, obj_enddoor_center);
					}
					endplaced = true;
					break;
			}
		}
		instance_destroy();
		obj_player.state = scr_player_move;
		instance_destroy(obj_loadingscreen);
	}
}
