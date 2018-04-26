/// @desc ?

var passed_check = sign(other.x - x) * sign(other.x - prev_x);
if(dir == 1 || dir == 3) passed_check = sign(other.y - y) * sign(other.y - prev_y);
var distance = abs(other.x - x) + abs(other.y - y);
//show_debug_message(passed_check);

if(passed_check == -1) {
	var teleport_to = instance_furthest(x, y, obj_teleport);
	
	if(x > teleport_to.x) dir = 0;
	if(x < teleport_to.x) dir = 2;
	
	x = teleport_to.x;
	y = teleport_to.y;
	prev_x = x;
	prev_y = y;
}