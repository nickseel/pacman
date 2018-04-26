/// @desc ?

event_inherited();

depth = -99;

score = 0;
max_score = 0;

for(var c = 4; c < 999; c += 8) {
	for(var r = 4; r < 999; r += 8) {
		var check = tilemap_get_at_pixel(stage_tilemap, c, r);
		if(check == 8 || check == 16) {
			max_score++;
		}
	}
}