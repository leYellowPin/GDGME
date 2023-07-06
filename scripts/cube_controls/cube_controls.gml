// control script for cube gamemode
function cube_controls(){
	var k_up = keyboard_check(vk_up) 
	or keyboard_check(vk_space) 
	or mouse_check_button(mb_left) 
	or mouse_check_button(mb_right);

	if global.pause {exit;}
	Gmodifier = 1;
	if !sideway{
		if k_up and place_meeting(x, y+gravdir*4, _solid){
			if global.playmode == 1 and abs(hsp) <= 0.5 { p_xscale = .5; p_yscale = 1.25; }
			//image_yscale+=lengthdir_y(0.1,90-image_angle)
		    vsp = (-j_force)*gravdir;
		}
	}
	
	if sideway{
		if k_up and place_meeting(x+gravdir*4, y, _solid){
			if global.playmode == 1 and abs(hsp) <= 0.5 { p_xscale = .5; p_yscale = 1.25; }
		    vsp = (-j_force)*gravdir;
		}
	}
}