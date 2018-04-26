/// @desc ?

if(input_lock_timer <= 0) {
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))) { target_dir = 0; target_timer = 0.5; }
	if(keyboard_check(vk_down) || keyboard_check(ord("S"))) { target_dir = 1; target_timer = 0.5; }
	if(keyboard_check(vk_left) || keyboard_check(ord("A"))) { target_dir = 2; target_timer = 0.5; }
	if(keyboard_check(vk_up) || keyboard_check(ord("W"))) { target_dir = 3; target_timer = 0.5; }
}
if(keyboard_check_pressed(vk_f1) && room == room0) room_goto_next();

respawn_timer -= delta;
if(respawn_timer <= 0 && dead) {
	dead = false;
	x = obj_player_spawn.x;
	y = obj_player_spawn.y;
	sprite_index = spr_player;
	dir = 0;
	
	for(var i = 0; i < 4; i++) {
		var enemy = instance_find(obj_enemy, i);
		enemy.x = obj_enemy_spawn.x;
		enemy.y = obj_enemy_spawn.y;
		enemy.dead = false;
		enemy.respawn_timer = -1;
		enemy.dir = choose(0, 2, 3);
	}
}

if(!dead) {
	event_inherited();
}


if(tilemap_get_at_pixel(stage_tilemap, x, y) == 8) {
	tilemap_set_at_pixel(stage_tilemap, 24, x, y);
	score++;
	
	//show_debug_message(string(score) + " / " + string(max_score));
} else if(tilemap_get_at_pixel(stage_tilemap, x, y) == 16) {
	tilemap_set_at_pixel(stage_tilemap, 24, x, y);
	score++;
	powered_up_timer = 8;
}

if(score == max_score && room == room0) {
	room_goto_next();
}