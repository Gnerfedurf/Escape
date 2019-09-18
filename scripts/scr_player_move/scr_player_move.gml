//get input
w = keyboard_check(ord("W"));
a = keyboard_check(ord("A"));
s = keyboard_check(ord("S"));
d = keyboard_check(ord("D"));
space = keyboard_check(vk_space);

//move
if (w && !s && !a && !d) {
	phy_position_y -= spd;
	image_speed = aspd;
	sprite_index = sp_player_0_walking;
	dir = 0;
}
if (s && !w && !a && !d) {
	phy_position_y += spd;
	image_speed = aspd;
	sprite_index = sp_player_180_walking;
	dir = 4;
}
if (a && !d && !w && !s) {
	phy_position_x -= spd;
	image_speed = aspd;
	sprite_index = sp_player_270_walking;
	dir = 6;
}
if (d && !a && !w && !s) {
	phy_position_x += spd;
	image_speed = aspd;
	sprite_index = sp_player_90_walking;
	dir = 2;
}
if (w && !s && a && !d) {
	phy_position_y -= vspd;
	phy_position_x -= vspd;
	image_speed = aspd;
	sprite_index = sp_player_0_walking;
	dir = 7;
}
if (s && !w && a && !d) {
	phy_position_y += vspd;
	phy_position_x -= vspd;
	image_speed = aspd;
	sprite_index = sp_player_270_walking;
	dir = 5;
}
if (!a && d && w && !s) {
	phy_position_y -= vspd;
	phy_position_x += vspd;
	image_speed = aspd;
	sprite_index = sp_player_0_walking;
	dir = 1;
}
if (d && !a && !w && s) {
	phy_position_y += vspd;
	phy_position_x += vspd;
	image_speed = aspd;
	sprite_index = sp_player_90_walking;
	dir = 3;
}
if ((!w && !a && !s && !d) || (w && s) || (a && d)) {
	image_speed = 0;
	image_index = 0;
}

//depth
depth = -y;

//shoot
if (space && firecount == firerate) {
	state = scr_player_attack;
	firecount = 0;
}
else if (firecount != firerate) {
	firecount++;
}