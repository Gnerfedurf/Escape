//move
if (!exploding) {
	if (!(obj_player.x -64 <= x && obj_player.x + 64 >= x) && !(obj_player.y -64 <= y && obj_player.y + 64 >= y)) {
			phy_position_x += vspd * sign(obj_player.x -x);
			phy_position_y += vspd * sign(obj_player.y -y);
	}
	else {
		if !(obj_player.x -64 <= x && obj_player.x + 64 >= x) {
			phy_position_x += spd * sign(obj_player.x -x);
		}
		if !(obj_player.y -64 <= y && obj_player.y + 64 >= y) {
			phy_position_y += spd * sign(obj_player.y -y);
		}
	}
}

//shoot
if ((obj_player.x -128 <= x && obj_player.x + 128 >= x) && (obj_player.y -128 <= y && obj_player.y + 128 >= y)) {
	exploding = true;
	sprite_index = sp_enemy4_attacking;
}