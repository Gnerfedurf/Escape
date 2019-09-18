//add stats
if (obj_stats.level % 3 == 0) {
	script_execute(scr_enemystatup);
}
if (obj_stats.level % 4 == 0) {
	script_execute(scr_playerstatup);
}
if (obj_stats.level % 5 == 0) {
	script_execute(scr_bossstatup);
}