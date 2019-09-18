//start game
if (position_meeting(mouse_x,mouse_y,obj_playbutton)) {
	if (mouse_check_button_pressed(mb_left)) {
		instance_create_depth(0,0,0,obj_stats);
		room_goto(rm_chamber_center);
	}
	image_index = 1;
}
else {
	image_index = 0;	
}