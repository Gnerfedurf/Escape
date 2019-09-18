//move
if (obj_player.x -x >= 8 || obj_player.x -x <= -8) {
	phy_position_x += spd * sign(obj_player.x -x);
	image_speed = 2;
}
else {
	attacking = true;
}

if (obj_player.y -y >= 8 || obj_player.y -y <= -8) {
	phy_position_y += spd * sign(obj_player.y -y);
	image_speed = 2;
}
else {
	attacking = true;
}

if (obj_player.x -x >= 8) {
	sprite_index = sp_enemy1_90_walking;
	dir = 2;
	if (attacking) {
		sprite_index = sp_enemy1_90_attacking;
		state = scr_enemy1_attack;
		image_speed = 1;
		image_index = 0;
	}
}

if (obj_player.x -x <= -8) {
	sprite_index = sp_enemy1_270_walking;
	dir = 6;
	if (attacking) {
		sprite_index = sp_enemy1_270_attacking;
		state = scr_enemy1_attack;
		image_speed = 1;
		image_index = 0;
	}
}

if (obj_player.y -y >= 8) {
	sprite_index = sp_enemy1_180_walking;
	dir = 4;
	if (attacking) {
		sprite_index = sp_enemy1_180_attacking;
		state = scr_enemy1_attack;
		image_speed = 1;
		image_index = 0;
	}
}

if (obj_player.y -y <= -8) {
	sprite_index = sp_enemy1_0_walking;
	dir = 0;
	if (attacking) {
		sprite_index = sp_enemy1_0_attacking;
		state = scr_enemy1_attack;
		image_speed = 1;
		image_index = 0;
	}
}

//depth
depth = -y;