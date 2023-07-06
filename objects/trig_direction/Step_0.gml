/// @description Insert description here
// You can write your code in this editor

switch(image_angle){
	case 0:
		if image_yscale == -1{ dir = "right_up"; }
		if image_yscale == 1{ dir = "right_down"; }
	break;
	case 90:
		if image_yscale == -1{ dir = "up_up"; }
		if image_yscale == 1{ dir = "up_down"; }
	break;
	case 180:
		if image_yscale == -1{ dir = "left_down"; }
		if image_yscale == 1{ dir = "left_up"; }
	break;
	case 270:
		if image_yscale == -1{ dir = "down_down"; }
		if image_yscale == 1{ dir = "down_up"; }
	break;
}




if place_meeting(x, y, o_player){
	if !is_used{
		with o_player{
			//
		switch(other.dir){
			case "left_down":
				gravdir = 1; movedir = -1; sideway = 0;
			break;
			case "right_down":
				gravdir = 1; movedir = 1; sideway = 0;
			break;
			case "up_down":
				gravdir = 1; movedir = -1; sideway = 1;
			break;
			case "down_down":
				gravdir = 1; movedir = 1; sideway = 1;
			break;
			
			
			case "left_up":
				gravdir = -1; movedir = -1; sideway = 0;
			break;
			case "right_up":
				gravdir = -1; movedir = 1; sideway = 0;
			break;
			case "up_up":
				gravdir = -1; movedir = -1; sideway = 1;
			break;
			case "down_up":
				gravdir = -1; movedir = 1; sideway = 1;
			break;
		}
		
		}
	}
	if !multi_activate{ is_used = true;}
}