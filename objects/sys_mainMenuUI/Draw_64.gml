/// @description draw the game logo

var _dur = .5; // lower = faster
var _offset = 5;
var _lx = display_get_gui_width()/2;
var _ly = (display_get_gui_height()/2 -250) + sin(current_time/1000 / _dur) * _offset;
draw_sprite_ext(s_gameLogo, 0, _lx, _ly, 1, 1, 0, c_white, 1);
