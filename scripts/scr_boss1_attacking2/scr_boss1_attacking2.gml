//jump up
jumping = true;

if (image_index >= 7) {
	image_speed = 0;
	image_index = 8;
	if (!(obj_player.x -150 <= x && obj_player.x + 150 >= x) && !(obj_player.y -150 <= y && obj_player.y + 150 >= y)) {
			phy_position_x += vspd * sign(obj_player.x -x);
			phy_position_y += vspd * sign(obj_player.y -y);
	}
	else {
		if !(obj_player.x -150 <= x && obj_player.x + 150 >= x) {
			phy_position_x += spd * sign(obj_player.x -x);
		}
		if !(obj_player.y -150 <= y && obj_player.y + 150 >= y) {
			phy_position_y += spd * sign(obj_player.y -y);
		}
	}
	if ((obj_player.x -150 <= x && obj_player.x + 150 >= x) && (obj_player.y -150 <= y && obj_player.y + 150 >= y) && !landing) {
		landing = true
		sprite_index = sp_boss1_landing;
		image_index = 0;
		image_speed = .7;
	}
	if (landing && image_index >= 7) {
		jumping = false;
		landing = false;
		state = scr_boss1_waiting;
	}
}