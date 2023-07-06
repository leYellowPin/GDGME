/// @description ui mode

if mode == "room" {exit;}

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);


var _width = sprite_get_width(sprite_index);
var _height = sprite_get_height(sprite_index);
var _ox = sprite_get_xoffset(sprite_index);
var _oy = sprite_get_yoffset(sprite_index);

var _x = x-_ox;
var _y = y-_oy;

if mlimit == global.mlimit {
	if point_in_rectangle(_mx, _my, _x, _y, _x+_width, _y+_height){
		if device_mouse_check_button(0, mb_left){
			if second_tex {selected = 1;}
			scale = scale_max;
		}
		if device_mouse_check_button_released(0, mb_left){
			switch(output){
				case "noone":
					// nothin
				break;
				case "room":
					room_goto(rm_to);
				break;
				case "popup":
					// currently not implemented yet
				break;
				case "execute script":
					if script_exists(output_script){
						if scrArray == 0 {script_execute(output_script);}
						else { script_execute_ext(output_script, scrArray); }
					}
				break;
			}
			if second_tex {selected = 0;}
			scale = scale_min;
		}
	}else{
		selected = 0;
		scale = scale_min;
	}

}else{
	selected = 0;
	scale = scale_min;
}

scaleDr = lerp(scaleDr, scale, .25);

draw_sprite_ext(sprite_index, image_index+selected, x, y, scaleDr, scaleDr, angle, c_white, opacity);
draw_sprite_ext(overlay_tex, overlay_index, x, y, scaleDr, scaleDr, angle, c_white, opacity*overlay);