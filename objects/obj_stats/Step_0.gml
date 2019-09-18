//open and close doors
if (enemies != 0) {
	doorsclosed = true;
}
else {
	doorsclosed = false;
}
if (instance_exists(obj_chamberfog) || enemies != 0) {
	enddoorclosed = true;
}
else {
	enddoorclosed = false;
}

//go to menu
if (keyboard_check(vk_escape)) {
	room_goto(rm_menu);
	instance_destroy();
}