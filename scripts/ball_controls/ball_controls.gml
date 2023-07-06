// control script for cube gamemode
function ball_controls(){
	var k_up = keyboard_check_pressed(vk_up) 
	or keyboard_check_pressed(vk_space) 
	or mouse_check_button_pressed(mb_left) 
	or mouse_check_button_pressed(mb_right);

	if global.pause {exit;}
	
	Gmodifier = .9;
	
	if !sideway{
		if k_up and place_meeting(x, y+gravdir, _solid){
		    gravdir = -gravdir;
		}
	}
	
	if sideway{
		if k_up and place_meeting(x+gravdir, y, _solid){
		    gravdir = -gravdir;
		}
	}
}