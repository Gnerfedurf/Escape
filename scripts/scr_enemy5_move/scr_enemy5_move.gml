//move
if (!(obj_player.x -16 <= x && obj_player.x + 16 >= x) && !(obj_player.y -16 <= y && obj_player.y + 16 >= y)) {
		phy_position_x += vspd * sign(obj_player.x -x);
		phy_position_y += vspd * sign(obj_player.y -y);
		if (((obj_player.x -x) > 0) && ((obj_player.y -y) > 0)) {
			dir = 3;
		}
		if (((obj_player.x -x) < 0) && ((obj_player.y -y) > 0)) {
			dir = 5;
		}
		if (((obj_player.x -x) < 0) && ((obj_player.y -y) < 0)) {
			dir = 7;
		}
		if (((obj_player.x -x) > 0) && ((obj_player.y -y) < 0)) {
			dir = 1;
		}
}
else {
	if !(obj_player.x -16 <= x && obj_player.x + 16 >= x) {
		phy_position_x += spd * sign(obj_player.x -x);
		if ((obj_player.x -x) > 0) {
			dir = 2;
		}
		else {
			dir = 6;
		}
	}
	if !(obj_player.y -16 <= y && obj_player.y + 16 >= y) {
		phy_position_y += spd * sign(obj_player.y -y);
		if ((obj_player.y -y) > 0) {
			dir = 4;
		}
		else {
			dir = 0;
		}
	}
}

//animation
switch (dir) {
	case 0:
		phy_rotation = 180;
		break;
	case 1:
		phy_rotation = 225;
		break;
	case 2:
		phy_rotation = 270;
		break;
	case 3:
		phy_rotation = 315;
		break;
	case 4:
		phy_rotation = 0;
		break;
	case 5:
		phy_rotation = 45;
		break;
	case 6:
		phy_rotation = 90;
		break;
	case 7:
		phy_rotation = 135;
		break;
}