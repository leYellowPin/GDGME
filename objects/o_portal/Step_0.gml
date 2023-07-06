/// @description Insert description here
// You can write your code in this editor


if instance_number(o_player) > 0{
	if point_in_rectangle(o_player.x, o_player.y, x-32, y-82, x+32, y+82){
		if !is_used or multi_activate{
			switch(portal){
				case 0:
					if o_player.gravdir != 1{
						particle_ring = instance_create_layer(x, y, "player", sys_particle);
						with particle_ring{
							p_shape = pt_shape_circle;

							p_size._min = 0.1;
							p_size._max = .6;
							p_size._incr = 0.1;

							p_color.fadein = c_white;
							p_color.main = c_white;
							p_color.fadeout = c_white;

							p_opacity.fadein = 1;
							p_opacity.main = .5;
							p_opacity.fadeout = 0;

							p_speed._min = 0;
							p_speed._max = 0;
							p_speed._incr = 0;

							p_dir._min = 0;
							p_dir._max = 0;
							p_dir._incr = 0;
	
							p_blend = true;
	
							p_lifetime._min = 20;
							p_lifetime._max = 20;
	
							mode = 1;
							duration = 21;
							depth = other.depth+1;
	
						}
						o_player.gravdir = 1;
						is_used = true;
					}
				break;
				case 1:
					if o_player.gravdir != -1{
						with particle_ring{
							p_shape = pt_shape_circle;

							p_size._min = 0.1;
							p_size._max = .6;
							p_size._incr = 0.1;

							p_color.fadein = c_white;
							p_color.main = c_white;
							p_color.fadeout = c_white;

							p_opacity.fadein = 1;
							p_opacity.main = .5;
							p_opacity.fadeout = 0;

							p_speed._min = 0;
							p_speed._max = 0;
							p_speed._incr = 0;

							p_dir._min = 0;
							p_dir._max = 0;
							p_dir._incr = 0;
	
							p_blend = true;
	
							p_lifetime._min = 20;
							p_lifetime._max = 20;
	
							mode = 1;
							duration = 21;
							depth = other.depth+1;
	
						}
						o_player.gravdir = -1;
						is_used = true;
					}
				break;
				case 2:
					if o_player.gamemode != "cube"{
						with particle_ring{
							p_shape = pt_shape_circle;

							p_size._min = 0.1;
							p_size._max = .6;
							p_size._incr = 0.1;

							p_color.fadein = c_white;
							p_color.main = c_white;
							p_color.fadeout = c_white;

							p_opacity.fadein = 1;
							p_opacity.main = .5;
							p_opacity.fadeout = 0;

							p_speed._min = 0;
							p_speed._max = 0;
							p_speed._incr = 0;

							p_dir._min = 0;
							p_dir._max = 0;
							p_dir._incr = 0;
	
							p_blend = true;
	
							p_lifetime._min = 20;
							p_lifetime._max = 20;
	
							mode = 1;
							duration = 21;
							depth = other.depth+1;
	
						}
						o_player.angleDr = 0;
						o_player.gamemode = "cube";
						is_used = true;
					}
				break;
				case 3:
					if o_player.gamemode != "ship"{
						with particle_ring{
							p_shape = pt_shape_circle;

							p_size._min = 0.1;
							p_size._max = .6;
							p_size._incr = 0.1;

							p_color.fadein = c_white;
							p_color.main = c_white;
							p_color.fadeout = c_white;

							p_opacity.fadein = 1;
							p_opacity.main = .5;
							p_opacity.fadeout = 0;

							p_speed._min = 0;
							p_speed._max = 0;
							p_speed._incr = 0;

							p_dir._min = 0;
							p_dir._max = 0;
							p_dir._incr = 0;
	
							p_blend = true;
	
							p_lifetime._min = 20;
							p_lifetime._max = 20;
	
							mode = 1;
							duration = 21;
							depth = other.depth+1;
	
						}
						o_player.angleDr = -o_player.vsp;
						o_player.gamemode = "ship";
						is_used = true;
					}
				break;
				case 4:
					if o_player.gamemode != "ball"{
						with particle_ring{
							p_shape = pt_shape_circle;

							p_size._min = 0.1;
							p_size._max = .6;
							p_size._incr = 0.1;

							p_color.fadein = c_white;
							p_color.main = c_white;
							p_color.fadeout = c_white;

							p_opacity.fadein = 1;
							p_opacity.main = .5;
							p_opacity.fadeout = 0;

							p_speed._min = 0;
							p_speed._max = 0;
							p_speed._incr = 0;

							p_dir._min = 0;
							p_dir._max = 0;
							p_dir._incr = 0;
	
							p_blend = true;
	
							p_lifetime._min = 20;
							p_lifetime._max = 20;
	
							mode = 1;
							duration = 21;
							depth = other.depth+1;
	
						}
						o_player.angleDr = 0;
						o_player.gamemode = "ball";
						is_used = true;
					}
				break;
			}	
		}
	}

}
