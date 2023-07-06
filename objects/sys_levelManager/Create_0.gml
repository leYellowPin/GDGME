/// @description init
Ptime = 0;
Ptime_delta = 0;

mode = 0;
edit_mode = 0;

dragx = 0;
dragy = 0;

// selected

sel_bd = s_design_01;
sel_bd_index = 0;
sel_grid = 62;
sel_x = 0;
sel_y = 0;
bd_type = o_solid;

level_name = "unnamed";
level_bg = bg_01;
level_grnd = grnd_01;

sel_swipe = false;
_swipeXstart = 0;
_swipeYstart = 0;
_swipeXend = 0;
_swipeYend = 0;

mb_left_press = mouse_check_button_pressed(mb_left);
mb_left_held = mouse_check_button(mb_left);
mb_left_release = mouse_check_button_released(mb_left);