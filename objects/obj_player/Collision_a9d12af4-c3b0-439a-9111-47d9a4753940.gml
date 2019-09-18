//go to new room
if (!obj_stats.doorsclosed && doorcounter == doorcountermax) {
	doorcounter = 0;
	phy_position_x -= 340;
	obj_view.x -= 2048;
}