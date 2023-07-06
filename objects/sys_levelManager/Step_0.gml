/// @description main
// pause mechanic

var pause = keyboard_check_pressed(vk_escape);

if pause{
	global.pause = !global.pause;
	with sys_levelAudio{
		p_ = true;	
	}
}

if !global.pause and mode == 0{
	//var deltaF = (delta_time/1000000) * game_get_speed(gamespeed_fps);
	Ptime += 1/60;
	Ptime_delta += ((delta_time/1000000));
}


//edit & play mode


var d_press = mouse_check_button_pressed(mb_middle);
var d_hold = mouse_check_button(mb_middle);
var shift_held = keyboard_check(vk_shift);
mb_left_press = mouse_check_button_pressed(mb_left);
mb_left_held = mouse_check_button(mb_left);
mb_left_release = mouse_check_button_released(mb_left);
var startx = global.startx;
var starty = global.starty;

switch(mode){
	case 0:
		// initalize some sht
		
		edit_mode = 0;
		sel_grid = 62;
		
		// spawn player at the start position
	
		if instance_number(o_player) == 0{
			instance_create_layer(startx, starty, "player", o_player);
		}
		
		if instance_number(sys_levelEditorUI) != 0 { instance_destroy(sys_levelEditorUI); }
		
		// view control
		
		with o_view{
			x += (view_target.x - x)/smooth;
			y += (view_target.y - y)/smooth;
		
			view_x = x - (view_width/2)+global.view_offsetX;
			view_y = y - (view_height/2)+global.view_offsetY;
		}
	break;
	case 1:
		if instance_number(o_player) != 0 { instance_destroy(o_player); }
		
		if instance_number(sys_levelEditorUI) == 0{
			instance_create_layer(0, 0, "player", sys_levelEditorUI);
		}
		
		//var left_release = mouse_check_button_released(mb_left);
		//var right_release = mouse_check_button_released(mb_right);
		//var shift_hold = keyboard_check(vk_shift);
		
	if !global.pause{
		sel_x = floor(mouse_x/sel_grid)*sel_grid;
		sel_y = floor(mouse_y/sel_grid)*sel_grid;
		
		if keyboard_check(vk_numpad0){ edit_mode = 0; }
		if keyboard_check(vk_numpad1){ edit_mode = 1; }
		if keyboard_check(vk_numpad2){ edit_mode = 2; }
		if keyboard_check_pressed(vk_numpad3){ 
			if bd_type == o_solid { bd_type = o_nsolid }
			else if bd_type == o_nsolid { bd_type = o_portal }
			else if bd_type == o_portal { bd_type = o_solid }
		}
		
		if keyboard_check_pressed(ord("M")){ sel_bd_index+=1 }
		if keyboard_check_pressed(ord("N")){ sel_bd_index-=1 }
		
		// deselect
		if keyboard_check(vk_alt) and keyboard_check_pressed(ord("D")) { inst_parent.selected = 0; }
		
		switch(edit_mode){
			case 0:
				if mb_left_press and global.mlimit == 0{
					var _offset = sel_grid/2;
					
					switch(bd_type){
						case o_solid:
						instance_create_layer(sel_x+_offset, sel_y+_offset, "solid", o_solid, {
							tex01 : sel_bd,
							tex02 : sel_bd,
							col01 : c_white,
							col02 : c_white,
							image_speed : 0,
							i_index : sel_bd_index,
							opacity : 1,
							visible : true
						})	
						break;
						case o_nsolid:
						instance_create_layer(sel_x+_offset, sel_y+_offset, "non_solid", o_nsolid, {
							tex01 : sel_bd,
							tex02 : sel_bd,
							col01 : c_white,
							col02 : c_white,
							image_speed : 0,
							i_index : sel_bd_index,
							opacity : 1,
							visible : true
						})	
						break;
						case o_portal:
						instance_create_layer(sel_x+_offset, sel_y+_offset, "interactable", o_portal, {
							col01 : c_white,
							col02 : c_white,
							image_speed : 0,
							i_index : sel_bd_index,
							opacity : 1,
							visible : true
						})	
						break;
					}
				}
			break;
			case 1:
				// select object

				if mb_left_press and global.mlimit == 0{
					with instance_position(mouse_x, mouse_y, inst_parent){
						selected = 1;
					}
					if shift_held{
						sel_swipe = true;
						_swipeXstart = mouse_x;
						_swipeYstart = mouse_y;
					}
				}
				if mb_left_held{
					_swipeXend = mouse_x;
					_swipeYend = mouse_y;
				}else{
					sel_swipe = false;	
				}
				
				if mb_left_release{
						if _swipeXstart != noone and _swipeYstart != noone and _swipeXend != noone and _swipeYend != noone{
							with inst_parent{
								
								var _xs = other._swipeXstart;
								var _ys = other._swipeYstart;
								var _xe = other._swipeXend;
								var _ye = other._swipeYend;
								
								var tlbr = (x > _xs && x < _xe && y > _ys && y < _ye);
								var trbl = (x < _xs && x > _xe && y > _ys && y < _ye);
								var bltr = (x > _xs && x < _xe && y < _ys && y > _ye);
								var brtl = (x < _xs && x > _xe && y < _ys && y > _ye);
								
								if tlbr or trbl or bltr or brtl{
									selected = 1;
								}
							}
						}
						
						_swipeXstart = noone;
						_swipeYstart = noone;
						_swipeXend = noone;
						_swipeYend = noone;
				}
				
				
				
				
				// change selected objects properties
				
				with inst_parent{
					if selected{
						if !keyboard_check(vk_control){
							if !keyboard_check(vk_alt){
								// move obj
								if !shift_held{
									if keyboard_check_pressed(ord("W")){ y -= other.sel_grid; }
									if keyboard_check_pressed(ord("A")){ x -= other.sel_grid; }
									if keyboard_check_pressed(ord("S")){ y += other.sel_grid; }
									if keyboard_check_pressed(ord("D")){ x += other.sel_grid; }
								}else{
									if keyboard_check_pressed(ord("W")){ y -= other.sel_grid/15.5; }
									if keyboard_check_pressed(ord("A")){ x -= other.sel_grid/15.5; }
									if keyboard_check_pressed(ord("S")){ y += other.sel_grid/15.5; }
									if keyboard_check_pressed(ord("D")){ x += other.sel_grid/15.5; }
								}
							
								if keyboard_check_pressed(vk_delete){ instance_destroy(id); }
								
								// rotate obj clockwise
								if keyboard_check_pressed(ord("E")){ image_angle -= 45; }
								// rotate obj counter-clockwise
								if keyboard_check_pressed(ord("Q")){ image_angle += 45; }
							}	
						}
					}
				}
				
			break;
			case 2:
				if mb_left_press and global.mlimit == 0{
					with instance_position(mouse_x, mouse_y, inst_parent){
						instance_destroy(id);	
					}
					
				}
			break;
		}
	
	
		with o_view{
			//drag view
			if d_press and global.mlimit == 0{
			    dragx = mouse_x;
			    dragy = mouse_y;
			}
			if d_hold and global.mlimit == 0{
			    view_x = dragx - (mouse_x - view_x);
			    view_y = dragy - (mouse_y - view_y);
			}
			
			
			// scale view / scale grid
			if mouse_wheel_down() and global.mlimit == 0{
				if shift_held{
					sys_levelManager.sel_grid -=31;
				}else{
					if view_width < global.resolutionX {viewZoomW += .05;}
					if view_height < global.resolutionY {viewZoomH += .05;}
				}
			}
			if mouse_wheel_up() and global.mlimit == 0{
				if shift_held{
					sys_levelManager.sel_grid +=31;
				}else{
					if view_width > 640 {viewZoomW -= .05;}
					if view_height > 360 {viewZoomH -= .05;}
				}
			}
		}
		
	}
	break;
}


// save and load level

if keyboard_check(vk_control) and keyboard_check_pressed(ord("S")) {
	level_name = get_string("Level Name: ", "unnamed");
	lvl_save(level_name);
}
if keyboard_check(vk_control) and keyboard_check_pressed(ord("L")) {
	var n = get_string("Level Name: ", "unnamed");
	lvl_load(n);
}