//spawn enemies
instance_create_depth(x + 128, y + 128, -1, obj_enemy3);
instance_create_depth(x + 256, y + 128, -1, obj_enemy3);
instance_create_depth(x + 128, y + 256, -1, obj_enemy3);

instance_create_depth(x + 1664, y + 128, -1, obj_enemy3);
instance_create_depth(x + 1792, y + 128, -1, obj_enemy3);
instance_create_depth(x + 1792, y + 256, -1, obj_enemy3);

instance_create_depth(x + 1664, y + 768, -1, obj_enemy3);
instance_create_depth(x + 1792, y + 768, -1, obj_enemy3);
instance_create_depth(x + 1792, y + 896, -1, obj_enemy3);

instance_create_depth(x + 128, y + 896, -1, obj_enemy3);
instance_create_depth(x + 128, y + 768, -1, obj_enemy3);
instance_create_depth(x + 256, y + 768, -1, obj_enemy3);

//set enemies spawned
enemiesspawned = true;