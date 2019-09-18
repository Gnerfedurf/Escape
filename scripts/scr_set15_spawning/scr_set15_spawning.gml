//spawn enemies
instance_create_depth(x + 1024, y + 640, -1, obj_enemy4);
instance_create_depth(x + 896, y + 640, -1, obj_enemy3);
instance_create_depth(x + 1152, y + 640, -1, obj_enemy3);
instance_create_depth(x + 896, y + 512, -1, obj_enemy3);
instance_create_depth(x + 1024, y + 512, -1, obj_enemy3);
instance_create_depth(x + 1152, y + 512, -1, obj_enemy3);
instance_create_depth(x + 896, y + 768, -1, obj_enemy3);
instance_create_depth(x + 1024, y + 768, -1, obj_enemy3);
instance_create_depth(x + 1152, y + 768, -1, obj_enemy3);
//set enemies spawned
enemiesspawned = true;