//create fog
instance_create_depth(x, y, -9999, obj_chamberfog);

//create walls
instance_create_depth(x, y, -1, obj_wall_topleft);
instance_create_depth(x + 128, y, -1, obj_wall_top);
instance_create_depth(x + 256, y, -1, obj_wall_top);
instance_create_depth(x + 384, y, -1, obj_wall_top);
instance_create_depth(x + 512, y, -1, obj_wall_top);
instance_create_depth(x + 640, y, -1, obj_wall_top);
instance_create_depth(x + 768, y, -1, obj_wall_top);
instance_create_depth(x + 896, y, -1, obj_wall_top);
instance_create_depth(x + 1024, y, -1, obj_wall_top);
instance_create_depth(x + 1152, y, -1, obj_wall_top);
instance_create_depth(x + 1280, y, -1, obj_wall_top);
instance_create_depth(x + 1408, y, -1, obj_wall_top);
instance_create_depth(x + 1536, y, -1, obj_wall_top);
instance_create_depth(x + 1664, y, -1, obj_wall_top);
instance_create_depth(x + 1792, y, -1, obj_wall_top);
instance_create_depth(x + 1920, y, -1, obj_wall_topright);
instance_create_depth(x, y + 128, -1, obj_wall_left);
instance_create_depth(x, y + 256, -1, obj_wall_left);
instance_create_depth(x, y + 384, -1, obj_wall_left);
instance_create_depth(x, y + 512, -1, obj_wall_left);
instance_create_depth(x, y + 640, -1, obj_wall_left);
instance_create_depth(x, y + 768, -1, obj_wall_left);
instance_create_depth(x, y + 896, -1, obj_wall_left);
instance_create_depth(x, y + 1024, -1, obj_wall_downleft);
instance_create_depth(x + 128, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 256, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 384, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 512, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 640, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 768, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 896, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 1024, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 1152, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 1280, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 1408, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 1536, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 1664, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 1792, y + 1024, -1, obj_wall_down);
instance_create_depth(x + 1920, y + 1024, -1, obj_wall_downright);
instance_create_depth(x + 1920, y + 128, -1, obj_wall_right);
instance_create_depth(x + 1920, y + 256, -1, obj_wall_right);
instance_create_depth(x + 1920, y + 384, -1, obj_wall_right);
instance_create_depth(x + 1920, y + 512, -1, obj_wall_right);
instance_create_depth(x + 1920, y + 640, -1, obj_wall_right);
instance_create_depth(x + 1920, y + 768, -1, obj_wall_right);
instance_create_depth(x + 1920, y + 896, -1, obj_wall_right);

//obstacles
