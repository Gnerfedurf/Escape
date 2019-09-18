//spawn enemies
instance_create_depth(x + 1244, y + 448, -1, obj_enemy1);
instance_create_depth(x + 1024, y + 448, -1, obj_enemy2);
instance_create_depth(x + 1024, y + 576, -1, obj_enemy3);
instance_create_depth(x + 1024, y + 704, -1, obj_enemy4);
instance_create_depth(x + 1244, y + 704, -1, obj_enemy5);

//set enemies spawned
enemiesspawned = true;