/// @desc ?

input_lock_timer -= delta;
target_timer -= delta;
if(target_timer <= 0) {
	target_dir = -1;
}

prev_x = x;
prev_y = y;

if(target_dir != -1 && ((dir - target_dir + 8) mod 4) == 2) {
	dir = target_dir;
	target_dir = -1;
	input_lock_timer = 0.1;
}
//if(target_dir != -1)
//	dir = target_dir;

switch(dir) {
case 0:
	x += delta * move_speed; break;
case 1:
	y += delta * move_speed; break;
case 2:
	x -= delta * move_speed; break;
case 3:
	y -= delta * move_speed; break;
}