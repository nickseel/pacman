/// @desc ?

input_lock_timer -= delta;
target_timer -= delta;
respawn_timer -= delta;

if(target_timer <= 0) {
	target_dir = -1;
}
if(respawn_timer <= 0 && dead) {
	dead = false;
	image_alpha = 1;
} else if(dead) {
	image_alpha = 0;
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

move_speed_mod = 1;
if(powered_up) {
	move_speed_mod = 0.6;
}

if(!dead) {
	switch(dir) {
	case 0:
		x += delta * move_speed * move_speed_mod; break;
	case 1:
		y += delta * move_speed * move_speed_mod; break;
	case 2:
		x -= delta * move_speed * move_speed_mod; break;
	case 3:
		y -= delta * move_speed * move_speed_mod; break;
	}
}