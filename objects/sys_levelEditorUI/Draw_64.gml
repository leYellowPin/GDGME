/// @description level editor (UI related)


var _dw = display_get_gui_width();
var _dh = display_get_gui_height();
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);


manage_btn();



draw_set_alpha(.25*sys_levelManager.mode*editor_ui);
	// limit zone 1
	draw_rectangle_color(0, _dh-192, _dw, _dh, c_black, c_black, c_black, c_black, 0);
	var _lmz1 = point_in_rectangle(_mx, _my, 0, _dh-192, _dw, _dh);
	
	// limit zone 2
	draw_rectangle_color(_dw - 256, 192, _dw, _dh-224, c_black, c_black, c_black, c_black, 0);
	var _lmz2 = point_in_rectangle(_mx, _my, _dw - 256, 192, _dw, _dh-224);
	
	if _lmz1 or _lmz2{
		global.mlimit = 1;	
	}else{
		global.mlimit = 0;
	}
draw_set_alpha(sys_levelManager.mode*editor_ui);


draw_sprite(s_grndLine, 0, _dw/2, _dh-192);

draw_set_alpha(1);