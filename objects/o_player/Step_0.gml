/// @description main

input.move_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
input.move_right = keyboard_check(vk_right) or keyboard_check(ord("D"));

var _movedir = (input.move_right-input.move_left)*global.playmode;
if (input.move_right-input.move_left)*global.playmode != 0 {movedir = _movedir;}

if global.playmode == 0 {hsp = spd * movedir;}
if global.playmode == 1 {hsp = lerp(hsp, spd*_movedir, .125);}
if round(abs(hsp)) == 0 {hsp = 0;}

hsp = clamp(hsp, -spd, spd);
vsp = clamp(vsp, -max_grav*Gmodifier, max_grav*Gmodifier);

if !sideway and !global.pause{
	if !place_meeting(x, y+gravdir, _solid) and !global.pause{
		vsp += grav*Gmodifier*gravdir;
	}
}
if sideway and !global.pause{
	if !place_meeting(x+gravdir, y, _solid) and !global.pause{
		vsp += grav*Gmodifier*gravdir;
	}
}


player_solidCollision(global.playmode, 1);

with particle_trail{
	
	visible = other.on_ground * (other.input.move_right-other.input.move_left);
	
	if !other.sideway{
		
		x = other.x+(-15*other.movedir);
		y = other.y+(28*other.gravdir);
	
		if other.movedir == -1 {p_dir._max = 0; p_dir._min = 0;}
		if other.movedir == 1 {p_dir._max = 180; p_dir._min = 180;}
	}else if other.sideway{
		
		x = other.x+(28*other.gravdir);
		y = other.y+(-15*other.movedir);
	
		if other.movedir == -1 {p_dir._max = -90; p_dir._min = -90;}
		if other.movedir == 1 {p_dir._max = 90; p_dir._min = 90;}
	}
}

