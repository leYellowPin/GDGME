/// @description Insert description here
// You can write your code in this editor

part_type_scale(p, image_xscale, image_yscale);
part_type_shape(p, p_shape);
part_type_size(p, p_size._min, p_size._max, p_size._incr, 0);
part_type_color3(p, p_color.fadein, p_color.main, p_color.fadeout);
part_type_alpha3(p, p_opacity.fadein, p_opacity.main, p_opacity.fadeout);
part_type_speed(p, p_speed._min, p_speed._max, p_speed._incr, 0);
part_type_direction(p, p_dir._min, p_dir._max, p_dir._incr, 5);
part_type_blend(p, p_blend);
part_type_life(p, p_lifetime._min*visible, p_lifetime._max*visible);


switch(mode){
	case 0:
		part_particles_create(p_system, x, y, p, 1);
		if duration != -1{
			duration -= 1;
			if duration <= 0 and duration > -1{ instance_destroy(id);}
		}
	break;
	case 1:
		if part_particles_count(p_system) == 0{
			part_particles_create(p_system, x, y, p, 1);
		}
		if duration != -1{
			duration -= 1;
			if duration <= 0 and duration > -1{ instance_destroy(id);}
		}
	break;
}