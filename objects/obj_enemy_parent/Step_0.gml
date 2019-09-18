//script
script_execute(state);

//die
if (hp <= 0) {
	obj_stats.enemies--;
	instance_destroy();
}

//depth
depth = -y;

//invulnerable
if (invcounter != 0) {
	invcounter--;
}