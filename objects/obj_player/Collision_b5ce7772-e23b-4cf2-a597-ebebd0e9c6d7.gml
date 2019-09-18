//get hit
if (invcounter == 0 && !obj_boss1.jumping) {
	hp -= obj_stats.bossdmg;
	invcounter = invcountermax;
}