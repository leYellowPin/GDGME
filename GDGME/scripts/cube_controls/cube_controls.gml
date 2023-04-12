// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cube_controls(){
	var k_up = keyboard_check(vk_up) 
	or keyboard_check(vk_space) 
	or mouse_check_button(mb_left) 
	or mouse_check_button(mb_right);

	if global.pause {exit;}
	Gmodifier = 1;
	if !sideway{
		if k_up and place_meeting(x, y+gravdir, _solid){
		    vsp = (-j_force)*gravdir;
		}
	}
	
	if sideway{
		if k_up and place_meeting(x+gravdir, y, _solid){
		    vsp = (-j_force)*gravdir;
		}
	}
}