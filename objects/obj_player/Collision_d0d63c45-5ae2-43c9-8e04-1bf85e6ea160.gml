//go to new room
if (!obj_stats.doorsclosed && doorcounter == doorcountermax) {
	doorcounter = 0;
	phy_position_y += 340;
	obj_view.y += 1152;
}