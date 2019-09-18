//wait for input
if (waitcounter >= waitcountermax) {
	if (mouse_check_button(mb_any) || keyboard_check(vk_anykey)) {
		room_goto(rm_menu);
	}
}
else {
	waitcounter++;
}