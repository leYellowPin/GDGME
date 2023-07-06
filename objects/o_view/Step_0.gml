/// @description main



var cam_ = view_camera[0];


global.view_zoomX = lerp(global.view_zoomX, viewZoomW, Zsmooth*(Zsmooth/4));
global.view_zoomY = lerp(global.view_zoomY, viewZoomH, Zsmooth*(Zsmooth/4));

view_width = global.view_zoomX*global.resolutionX;
view_height = global.view_zoomY*global.resolutionY;

view_angle = lerp(view_angle, viewRot, Rsmooth*(Rsmooth/4));




camera_set_view_pos(cam_, view_x, view_y);
camera_set_view_size(cam_, view_width, view_height);
camera_set_view_angle(cam_, view_angle);
//camera_set_view_target(cam_, o_view);  turn this on if you want to have view borders enabled
