//end game
if (position_meeting(mouse_x,mouse_y,obj_endbutton)) {
	
	if (mouse_check_button_pressed(mb_left)) {
		game_end();
	}
	image_index = 1;
}
else {
	image_index = 0;	
}