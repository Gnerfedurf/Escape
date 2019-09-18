//add enemie to stats
obj_stats.enemies++;

//rotation
phy_fixed_rotation = true;

//state
state = scr_boss1_waiting;

//variabels
hp = obj_stats.bosshp;
hpheight = 210;
jumping = false;
landing = false;
spawned = false;
spd = 11;
vspd = 2 / 3 * spd;

//invounerability
invcountermax = 15;
invcounter = 0;

//wait timer
waitcounter = -20;
waitcountermax = 30;