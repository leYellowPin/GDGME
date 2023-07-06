/// @description Setting up variables

hsp = 0;
vsp = 0;
spd = 10; //8
max_grav = 20; //18
//max_vsp = 18;
j_force = 20; //18
grav = 1.5; //1.2
gravdir = 1;
movedir = 1;
Gmodifier = 1;
on_ground = 0;
on_ceiling = 0;


_solid = o_solid;

input = {
	move_left : keyboard_check(vk_left) or keyboard_check(ord("A")),
	move_right : keyboard_check(vk_right) or keyboard_check(ord("D"))
}



p_angle = 0;
angleDr = 0;
p_xscale = 1;
p_yscale = 1;
p_def_xscale = 1;
p_def_yscale = 1;
scalexDr = 1;
scaleyDr = 1;
gamemode = "cube";

costume = {
	cube : 2,
	ship : 0,
	ball : 1
}

spr_origin = {
	cubeX : 30,
	cubeY : 30,
	shipX : 37,
	shipY : 23,
	ballX : 35,
	ballY : 35
};


// important

sideway = false;


particle_trail = instance_create_layer(x, y, "player", sys_particle);

with particle_trail{
	p_shape = pt_shape_square;

	p_size._min = 0.1;
	p_size._max = 0.2;
	p_size._incr = -0.01;

	p_color.fadein = c_white;
	p_color.main = c_white;
	p_color.fadeout = c_white;

	p_opacity.fadein = 1;
	p_opacity.main = .5;
	p_opacity.fadeout = 0;

	p_speed._min = .5;
	p_speed._max = 1;
	p_speed._incr = 0.1;

	p_dir._min = 0;
	p_dir._max = 20;
	p_dir._incr = 0;
	
	p_blend = true;
	
	p_lifetime._min = 10;
	p_lifetime._max = 15;
	
	depth = other.depth+1;
	
}