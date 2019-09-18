//Roomcoordinates
chamberx = 8192;
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
instance_create_depth(chamberx + 1920,chambery + 512,0,obj_startdoor_right);
obj_playercreator.playerx = chamberx + 1856;
obj_playercreator.playery = chambery + 576;
obj_view.x = chamberx + 1024;
obj_view.y = chambery + 576;
instance_destroy(obj_playercreator);