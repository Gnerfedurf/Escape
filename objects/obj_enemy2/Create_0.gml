//add enemie to stats
obj_stats.enemies++;

//rotation
phy_fixed_rotation = true;

//state
state = scr_enemy2_move;

//variables
spd = 8;
vspd = 2 / 3 * spd;
aspd = 0.2 * spd;
dir = 4;
hp = 2 + obj_stats.enemybonhp;
attacking = false;
hpheight = 68;
range = 25;
firerate = 16;
firecount = firerate;

//invulnerability
invcountermax = 15;
invcounter = 0;