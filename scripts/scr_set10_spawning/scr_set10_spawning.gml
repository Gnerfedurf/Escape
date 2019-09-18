//spawn enemies
instance_create_depth(x + 448, y + 320, -1, obj_enemy1);
instance_create_depth(x + 1344, y + 320, -1, obj_enemy1);
instance_create_depth(x + 704, y + 704, -1, obj_enemy1);
instance_create_depth(x + 1600, y + 832, -1, obj_enemy1);

//set enemies spawned
enemiesspawned = true;