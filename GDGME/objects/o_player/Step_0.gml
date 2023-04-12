/// @description Insert description here
// You can write your code in this editor


vsp = clamp(vsp, -max_grav*Gmodifier, max_grav*Gmodifier);

if !sideway and !global.pause{
	hsp = ( spd+((delta_time/1000000) * 60) ) * movedir;
	
	var speedX = hsp;
	var speedY = vsp;

	var _arr = move_and_collide(speedX, speedY, _solid, 4, 0, 0);
	if array_length(_arr) != 0 and place_meeting(x, y+(2*gravdir), _solid){vsp = 0;}//bottom
	if array_length(_arr) != 0 and place_meeting(x, y-(2*gravdir), _solid){vsp = 0;}//head
	
	
	if !place_meeting(x, y+gravdir, _solid) and !global.pause{
		vsp += grav*Gmodifier*gravdir;
	}
	
	
}

if sideway and !global.pause{
	hsp = ( spd+((delta_time/1000000) * 60) ) * movedir;
	
	var speedY = hsp;
	var speedX = vsp;

	var _arr = move_and_collide(speedX, speedY, _solid, 4, 0, 0);
	if array_length(_arr) != 0 and place_meeting(x+(2*gravdir), y, _solid){vsp = 0;}//bottom
	if array_length(_arr) != 0 and place_meeting(x-(2*gravdir), y, _solid){vsp = 0;}//heat

	if !place_meeting(x+gravdir, y, _solid) and !global.pause{
		vsp += grav*Gmodifier*gravdir;
	}
}