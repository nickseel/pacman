/// @desc ?

open_directions = [false, false, false, false];

stage_tilemap = layer_tilemap_get_id("Tiles");
var n;

n = tilemap_get_at_pixel(stage_tilemap, x+8, y);
if(n == 8 || n == 24 || n == 16) open_directions[0] = true;

n = tilemap_get_at_pixel(stage_tilemap, x, y+8);
if(n == 8 || n == 24 || n == 16) open_directions[1] = true;

n = tilemap_get_at_pixel(stage_tilemap, x-8, y);
if(n == 8 || n == 24 || n == 16) open_directions[2] = true;

n = tilemap_get_at_pixel(stage_tilemap, x, y-8);
if(n == 8 || n == 24 || n == 16) open_directions[3] = true;


/*
show_debug_message("(" + string(x) + ", " + string(y) + ")  " +
		string(open_directions[0]) + " " + string(open_directions[1]) + " " +
		string(open_directions[2]) + " " + string(open_directions[3]));
*/