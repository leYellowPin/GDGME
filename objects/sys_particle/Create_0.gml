/// @description Insert description here
// You can write your code in this editor
p_system = part_system_create_layer("particle", true);
p = part_type_create();

//mode = 0: always active ; 1: active once
//duration = any: time limit; -1: no time limit

p_shape = pt_shape_square;
p_size = {
	_min : 0,
	_max : 0,
	_incr : 0
}
p_color = {
	fadein : c_white,
	main : c_white,
	fadeout : c_white
}
p_opacity = {
	fadein : 0,
	main : 0,
	fadeout : 0
}
p_speed = {
	_min : 0,
	_max : 0,
	_incr : 0
}
p_dir = {
	_min : 0,
	_max : 0,
	_incr : 0
}
p_blend = true;
p_lifetime = {
	_min : 1,
	_max : 0
}