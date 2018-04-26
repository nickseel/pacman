/// @desc ?


if(powered_up) {
	other.x = obj_enemy_spawn.x;
	other.y = obj_enemy_spawn.y;
	other.image_alpha = 0;
	other.dead = true;
	other.respawn_timer = 3;
} else if(!dead) {
	dead = true;
	respawn_timer = 1.59;
	sprite_index = spr_player_dead;
	image_index = 0;
}