/// @description init
smooth = 10;

viewZoomW = .5;
viewZoomH = .5;
viewRot = 0;

Zsmooth = 2; // more = smoother
Rsmooth = 2; // more = smoother



view_target = o_player;

//every global variables related to viewport

global.view_zoomX = .1;
global.view_zoomY = .1;

global.view_offsetX = 0;
global.view_offsetY = 0;

global.resolutionX = 1920;
global.resolutionY = 1080;

global.startx = view_target.x;
global.starty = view_target.y;

//variables that's related to global variables related to viewport (very well-written comment)

view_width = global.view_zoomX*global.resolutionX;
view_height = global.view_zoomY*global.resolutionY;
view_angle = lerp(view_angle, viewRot, Rsmooth*(Rsmooth/4));