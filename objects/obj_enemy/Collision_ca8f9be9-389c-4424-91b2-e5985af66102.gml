/// @desc ?

var passed_check = sign(other.x - x) * sign(other.x - prev_x);
if(dir == 1 || dir == 3) passed_check = sign(other.y - y) * sign(other.y - prev_y);
var distance = abs(other.x - x) + abs(other.y - y);

if((passed_check == -1 || passed_check == 0) && distance < 4 && input_lock_timer <= 0) {
	var next_dir = 0;
	var once = false;
	
	while(!once || !other.open_directions[next_dir]) {
		if(choose(0, 1, 1) == 0) {
			next_dir = dir;
		} else {
			if(choose(0, 0, 0, 0, 1) == 0) {
				if(choose(0, 1) == 0) {
					if(dir == 0 || dir == 2) {
						once = false;
					} else if(obj_player.x > x) {
						next_dir = 0;
					} else {
						next_dir = 2;
					}
				} else {
					if(dir == 1 || dir == 3) {
						once = false;
					} else if(obj_player.y > y) {
						next_dir = 1;
					} else {
						next_dir = 3;
					}
				}
			} else {
				next_dir += choose(-1, 1);
				if(next_dir < 0) next_dir += 4;
				if(next_dir >= 4) next_dir -= 4;
			}
		}
		
		if(powered_up) {
			next_dir += 2;
			if(next_dir >= 4) next_dir -= 4;
		}
		
		once = true;
	}
	
	dir = next_dir;
	x = other.x;
	y = other.y;
	input_lock_timer = 0.1;
}