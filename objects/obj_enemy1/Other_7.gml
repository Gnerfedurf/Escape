//stop attacking
if (state = scr_enemy1_attack) {
	state = scr_enemy1_move;
	attacking = false;
}