/// @desc ?

image_speed = 0;

image_index = dir + (color_index * 4);
if(powered_up) {
	if(powered_up_timer > 1.66) {
		image_index = 16;
	} else if(powered_up_timer * 3 - floor(powered_up_timer * 3) < 0.5) {
		image_index = 16;
	}
}