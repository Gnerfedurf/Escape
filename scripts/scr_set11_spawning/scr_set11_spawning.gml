//spawn enemies
instance_create_depth(x + 1152, y + 448, -1, obj_enemy1);
instance_create_depth(x + 1000, y + 448, -1, obj_enemy2);
instance_create_depth(x + 1000, y + 576, -1, obj_enemy3);
instance_create_depth(x + 1000, y + 704, -1, obj_enemy4);
instance_create_depth(x + 1152, y + 704, -1, obj_enemy5);

//set enemies spawned
enemiesspawned = true;