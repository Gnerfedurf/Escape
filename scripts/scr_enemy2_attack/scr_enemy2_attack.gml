attack = obj_attack2;

//attack
switch (dir) {
	case 0:
		instance_create_depth(x, y -range, -2, attack);
		attack.phy_rotation = 0;
		break;
	case 1:
		instance_create_depth(x + (range * 2 / 3), y -(range * 2 / 3), -2, attack);
		attack.phy_rotation = 45;
		break;
	case 2:
		instance_create_depth(x + range, y, -2, attack);
		attack.phy_rotation = 90;
		break;
	case 3:
		instance_create_depth(x + (range * 2 / 3), y + (range * 2 / 3), -2, attack);
		attack.phy_rotation = 135;
		break;
	case 4:
		instance_create_depth(x, y + range, -2, attack);
		attack.phy_rotation = 180;
		break;
	case 5:
		instance_create_depth(x -(range * 2 / 3), y + (range * 2 / 3), -2, attack);
		attack.phy_rotation = 225;
		break;
	case 6:
		instance_create_depth(x -range, y, -2, attack);
		attack.phy_rotation = 270;
		break;
	case 7:
		instance_create_depth(x -(range * 2 / 3), y -(range * 2 / 3), -2, attack);
		attack.phy_rotation = 315;
		break;
}

//go back to moving
state = scr_enemy2_move;
image_speed = aspd;