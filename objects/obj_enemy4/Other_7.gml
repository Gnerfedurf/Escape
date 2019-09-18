//explode
if (sprite_index == sp_enemy4_attacking) {
	instance_create_depth(x, y, -y -1, obj_attack3);
	instance_destroy();
	obj_stats.enemies--;
}
