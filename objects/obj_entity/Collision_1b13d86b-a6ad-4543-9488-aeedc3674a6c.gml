/// @desc ?

var passed_check = sign(other.x - x) * sign(other.x - prev_x);
if(dir == 1 || dir == 3) passed_check = sign(other.y - y) * sign(other.y - prev_y);
var distance = abs(other.x - x) + abs(other.y - y);

if((passed_check == -1 || passed_check == 0 || dir == -1) && distance < 4) {
	if(target_dir != -1 && other.open_directions[target_dir] && target_dir != dir) {
		dir = target_dir;
		x = other.x;
		y = other.y;
		target_dir = -1;
		input_lock_timer = 0.1;
	} else if(dir != -1) {
	
		if(!other.open_directions[dir]) {
			x = other.x;
			y = other.y;
			dir = -1;
		}
	}
}