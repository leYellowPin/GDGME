// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ship_controls(){
	var k_up = keyboard_check(vk_up) 
	or keyboard_check(vk_space) 
	or mouse_check_button(mb_left) 
	or mouse_check_button(mb_right);
	

	Gmodifier = .8;
	
	if global.pause {exit;}
	
	if !sideway{
		if k_up and vsp*gravdir*Gmodifier >= -max_grav*Gmodifier{
		    vsp += -j_force*.09*gravdir;
		}
	}
	
	if sideway{
		if k_up and vsp*gravdir*Gmodifier >= -max_grav*Gmodifier{
		    vsp += -j_force*.09*gravdir;
		}
	}
}