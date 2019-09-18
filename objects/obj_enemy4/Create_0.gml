//add enemie to stats
obj_stats.enemies++;

//rotation
phy_fixed_rotation = true;

//state
state = scr_enemy4_move;

//variables
spd = 10;
vspd = 2 / 3 * spd;
aspd = 0.2 * spd;
dir = 4;
hp = 1;
hpheight = 64;
exploding = false;

//Invounerability
invcountermax = 15;
invcounter = 0;