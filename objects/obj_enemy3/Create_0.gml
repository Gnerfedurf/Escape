//add enemie to stats
obj_stats.enemies++;

//rotation
phy_fixed_rotation = true;

//state
state = scr_enemy3_move;

//variables
spd = 4;
vspd = 2 / 3 * spd;
aspd = 0.2 * spd;
dir = 4;
hp = 3 + obj_stats.enemybonhp;
hpheight = 64;

//invulnerability
invcountermax = 15;
invcounter = 0;