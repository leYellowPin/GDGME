/// @description room mode

if mode == "ui" {exit;}
if mlimit == global.mlimit {

	if position_meeting(mouse_x, mouse_y, id){
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
						script_execute(output_script);	
					}
				break;
			}
			selected = 0;
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