//go to next room-cluster
if (!obj_stats.enddoorclosed) {
	obj_stats.level ++;
	script_execute(scr_levelup);
	room_goto(rm_chamber_top);
}