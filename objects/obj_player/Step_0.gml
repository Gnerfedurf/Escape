//execute state
script_execute(state);

//depth
depth = -y;

//invounerable
if (invcounter != 0) {
	invcounter--;
}

//die
if (hp <= 0) {
	state = scr_player_dead;
}

//block doors
if (doorcounter != doorcountermax) {
	doorcounter++;
}