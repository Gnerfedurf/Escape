//rotation
phy_fixed_rotation = true;

//state
state = scr_player_loading;

//changeable variables
dmg = obj_stats.dmg;
range = obj_stats.range;
spd = obj_stats.spd;
firerate = obj_stats.firerate;
hp = obj_stats.hp;

//variables
vspd = spd * 2 / 3;
aspd = 0.6 * spd;
firecount = firerate;
dir = 4;

//invounerability
invcountermax = 15;
invcounter = 0;

//set a door cooldown
doorcountermax = 5;
doorcounter = doorcountermax;