//move
if (!(obj_player.x -100 <= x && obj_player.x + 100 >= x) && !(obj_player.y -100 <= y && obj_player.y + 100 >= y)) {
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
	if !(obj_player.x -100 <= x && obj_player.x + 100 >= x) {
		phy_position_x += spd * sign(obj_player.x -x);
		if ((obj_player.x -x) > 0) {
			dir = 2;
		}
		else {
			dir = 6;
		}
	}
	if !(obj_player.y -100 <= y && obj_player.y + 100 >= y) {
		phy_position_y += spd * sign(obj_player.y -y);
		if ((obj_player.y -y) > 0) {
			dir = 4;
		}
		else {
			dir = 0;
		}
	}
}

//shoot
if ((obj_player.x -128 <= x && obj_player.x + 128 >= x) && (obj_player.y -128 <= y && obj_player.y + 128 >= y) && (firecount == firerate)) {
	image_speed = 0;
	image_index  = 0;
	state = scr_enemy2_attack;
	firecount = 0;
}
else if (firecount != firerate) {
	firecount++;
}

//animation
switch (dir) {
	case 0:
		sprite_index = sp_enemy2_0_walking;
		break;
	case 1:
		sprite_index = sp_enemy2_0_walking;
		break;
	case 2:
		sprite_index = sp_enemy2_90_walking;
		break;
	case 3:
		sprite_index = sp_enemy2_90_walking;
		break;
	case 4:
		sprite_index = sp_enemy2_180_walking;
		break;
	case 5:
		sprite_index = sp_enemy2_270_walking;
		break;
	case 6:
		sprite_index = sp_enemy2_270_walking;
		break;
	case 7:
		sprite_index = sp_enemy2_0_walking;
		break;
}