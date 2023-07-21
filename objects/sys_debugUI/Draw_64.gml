/// @description Insert description here
// You can write your code in this editor
if instance_number(sys_levelManager){
	with sys_levelManager{
		draw_set_alpha(1*mode);

		draw_text_transformed_color(20, 20, "FPS: "+string(fps) + "-" + string(((delta_time/1000000) * game_get_speed(gamespeed_fps))*60), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode);
		draw_text_transformed_color(20, 60, "EDIT MODE (Numpad 0 - 2): "+string(edit_mode), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode);
		draw_text_transformed_color(20, 100, "Selected design (N-M): "+string(sel_bd_index), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode);
		draw_text_transformed_color(20, 140, "Object type (Numpad 3): "+string(bd_type), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode);
		draw_text_transformed_color(20, 180, "Level name: "+string(level_name), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode);
		draw_text_transformed_color(20, 240, "Total object: "+string(instance_number(inst_parent)), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode);

		draw_text_transformed_color(20, 280, "Grid size (Shift + Middle Scroll): "+string(sel_grid/62), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode);
		draw_text_transformed_color(20, 320, "Grid size (RAW): "+string(sel_grid), 1.5, 1.5, 0, c_lime, c_white, c_lime, c_white, 1*mode);

		draw_set_alpha(1);	
	}
}
if instance_number(o_player){
	with o_player{
		draw_text(20, 20, "FPS: " + string(fps));
		draw_text(20, 40, "movedir " + string(movedir));
		draw_text(20, 60, "gravdir" + string(gravdir));
		draw_text(20, 80, "sideway " + string(sideway));

		draw_text(20, 100, "horizontal speed " + string(hsp));
		draw_text(20, 120, "vertical speed " + string(vsp));
		draw_text(20, 140, "on ground " + string(on_ground));
		draw_text(20, 160, "on ceiling " + string(on_ceiling));	
		
		draw_text(20, 180, "time: " + string(sys_levelManager.Ptime));
	}
}