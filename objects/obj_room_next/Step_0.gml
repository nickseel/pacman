/// @desc ?

next_room_timer -= delta;
if(next_room_timer <= 0) {
	room_goto_next();
}