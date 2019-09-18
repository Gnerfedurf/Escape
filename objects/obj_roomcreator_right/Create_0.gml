//Roomcoordinates
chamberx = 0;
chambery = 2304;

//Creation Variables
dir = 0;
chambercounter = 0;
minchambers = 4;
endplaced = false;

//Create First Room
firstchamber = obj_chamber;
instance_create_depth(chamberx, chambery, 1, firstchamber);
firstchamber.cleared = true;
instance_create_depth(chamberx,chambery + 512,0,obj_startdoor_left);
obj_playercreator.playerx = chamberx + 128;
obj_playercreator.playery = chambery + 576;
obj_view.x = chamberx + 1024;
obj_view.y = chambery + 576;
instance_destroy(obj_playercreator);