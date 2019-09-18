//stop animating
image_speed = 0;

if (state == scr_boss1_attacking1 || state == scr_boss1_attacking3) {
	state = scr_boss1_waiting;
	spawned = false;
}