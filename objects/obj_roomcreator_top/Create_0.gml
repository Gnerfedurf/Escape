//Roomcoordinates
chamberx = 4096;
chambery = 4608;

//Creation Variables
dir = 0;
chambercounter = 0;
minchambers = 4;
endplaced = false;

//Create First Room
firstchamber = obj_chamber;
instance_create_depth(chamberx, chambery, 1, firstchamber);
firstchamber.cleared = true;
instance_create_depth(chamberx + 960 ,chambery + 1024,0,obj_startdoor_down);
obj_playercreator.playerx = chamberx + 1024;
obj_playercreator.playery = chambery + 960;
obj_view.x = chamberx + 1024;
obj_view.y = chambery + 576;
instance_destroy(obj_playercreator);