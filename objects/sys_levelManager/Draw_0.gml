/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(.5*mode);
draw_rectangle_color(sel_x, sel_y, sel_x+sel_grid, sel_y+sel_grid, c_lime, c_lime, c_lime, c_lime, 0);
draw_sprite_ext(s_cube_pri, 0, global.startx, global.starty, 1, 1, 0, c_white, .5*mode);


draw_set_alpha(.5*mode*sel_swipe);
draw_rectangle_color(_swipeXstart, _swipeYstart, _swipeXend, _swipeYend, c_lime, c_lime, c_lime, c_lime, 0);

draw_set_alpha(1);