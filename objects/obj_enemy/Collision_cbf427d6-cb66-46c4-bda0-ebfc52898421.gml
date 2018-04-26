/// @desc ?

var passed_check = sign(other.x - x) * sign(other.x - prev_x);
if(dir == 1 || dir == 3) passed_check = sign(other.y - y) * sign(other.y - prev_y);
var distance = abs(other.x - x) + abs(other.y - y);

if((passed_check == -1 || passed_check == 0) && distance < 4 && input_lock_timer <= 0) {
	var next_dir = 0;
	var once = false;
	
	while(!once || !other.open_directions[next_dir]) {
		next_dir = irandom_range(0, 3);
		
		once = true;
	}
	
	dir = next_dir;
	x = other.x;
	y = other.y;
	input_lock_timer = 0.1;
}