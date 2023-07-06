/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1*mode);

draw_text_transformed_color(display_get_gui_width()-250, 20, "EDIT MODE: "+string(edit_mode), 2, 2, 0, c_lime, c_white, c_lime, c_white, 1*mode)
draw_text_transformed_color(display_get_gui_width()-250, 60, "Selected design: "+string(sel_bd_index), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode)
draw_text_transformed_color(display_get_gui_width()-250, 100, "Grid size: "+string(sel_grid/62), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode)

draw_text_transformed_color(20, 20, "FPS: "+string(fps), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode)
draw_text_transformed_color(20, 100, "Block type: "+string(bd_type), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode)
draw_text_transformed_color(20, 140, "Total Objects: "+string(instance_number(inst_parent)), 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1*mode)
draw_text_transformed_color(20, 180, "Level name: "+string(level_name), 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1*mode)

draw_set_alpha(1);