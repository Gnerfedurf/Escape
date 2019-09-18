//attack
switch(dir) {
	case 0:
		if (image_index >= 3) {
			instance_create_depth(x, y -24, -2, obj_beam1_top);
		}
		break;
	case 2:
		if (image_index >= 3) {
			instance_create_depth(x + 56, y -8, -2, obj_beam1_right);
		}
		break;
	case 4:
		if (image_index >= 3) {
			instance_create_depth(x, y + 72, -2, obj_beam1_down);
		}
		break;
	case 6:
		if (image_index >= 3) {
			instance_create_depth(x -56, y -8, -2, obj_beam1_left);
		}
		break;
}

//depth
depth = -y;