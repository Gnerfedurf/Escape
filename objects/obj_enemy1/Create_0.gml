//add enemie to stats
obj_stats.enemies++;

//rotation
phy_fixed_rotation = true;

//state
state = scr_enemy1_move;

//variables
spd = 2;
dir = 4;
hp = 2 + obj_stats.enemybonhp;
attacking = false;
hpheight = 64;

//invulnerability
invcountermax = 15;
invcounter = 0;