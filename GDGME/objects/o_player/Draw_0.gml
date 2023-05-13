/// @description draw the player
//don't ask why there's so much code, it just works :)

var angleMod = 90*sideway*movedir;
var angleMul = 1.6;
angleDr = p_angle;//lerp(angleDr, p_angle, .5);

switch(gamemode){
 case "cube":
	sprite_set_offset(s_cube_pri, spr_origin.cubeX, spr_origin.cubeY);
	sprite_set_offset(s_cube_sec, spr_origin.cubeX, spr_origin.cubeY);
	
	if !sideway{
			
			player_angle_control();
			
			//p1
			draw_sprite_ext(s_cube_pri, cube_sprite, x, y, p_xscale, p_yscale, angleDr*-1+angleMod, c_white, 1);
			//p2
			draw_sprite_ext(s_cube_sec, cube_sprite, x, y, p_xscale, p_yscale, angleDr*-1+angleMod, c_white, 1);

	}else{
			
			player_angle_control();
			//p1
			draw_sprite_ext(s_cube_pri, cube_sprite, x, y, p_xscale, p_yscale, angleDr+angleMod, c_white, 1);
			//p2
			draw_sprite_ext(s_cube_sec, cube_sprite, x, y, p_xscale, p_yscale, angleDr+angleMod, c_white, 1);
			
	}
	
	cube_controls();
 break;
 case "ship":
	if !sideway{
	//small cube
		//p1
	/*new offset*/sprite_set_offset(s_cube_pri, spr_origin.cubeX, spr_origin.cubeY+(25));
	draw_sprite_ext(s_cube_pri, cube_sprite, x, y, image_xscale*.75*movedir, image_yscale*.75*gravdir, (angleDr*angleMul*movedir)+(angleMod), c_white, 1);
		//p2
	/*new offset*/sprite_set_offset(s_cube_sec, spr_origin.cubeX, spr_origin.cubeY+(25));
	draw_sprite_ext(s_cube_sec, cube_sprite, x, y, image_xscale*.75*movedir, image_yscale*.75*gravdir, (angleDr*angleMul*movedir)+(angleMod), c_white, 1);
	
	//ship
	sprite_set_offset(s_ship_pri, spr_origin.shipX, spr_origin.shipY);
	sprite_set_offset(s_ship_sec, spr_origin.shipX, spr_origin.shipY);
		//p1
	draw_sprite_ext(s_ship_pri, ship_sprite, x, y, image_xscale*1.25*movedir, image_yscale*1.25*gravdir, (angleDr*angleMul*movedir)+(angleMod), c_white, 1);
		//p2
	draw_sprite_ext(s_ship_sec, ship_sprite, x, y, image_xscale*1.25*movedir, image_yscale*1.25*gravdir, (angleDr*angleMul*movedir)+(angleMod), c_white, 1);
		//outline
	
	}else if sideway{
	//small cube
		//p1
	/*new offset*/sprite_set_offset(s_cube_pri, spr_origin.cubeX, spr_origin.cubeY+(25));
	draw_sprite_ext(s_cube_pri, cube_sprite, x, y, image_xscale*.75, image_yscale*.75*-gravdir*movedir, (angleDr*angleMul*-movedir)-(angleMod), c_white, 1);
		//p2
	/*new offset*/sprite_set_offset(s_cube_sec, spr_origin.cubeX, spr_origin.cubeY+(25));
	draw_sprite_ext(s_cube_sec, cube_sprite, x, y, image_xscale*.75, image_yscale*.75*-gravdir*movedir, (angleDr*angleMul*-movedir)-(angleMod), c_white, 1);
	
	//ship
	sprite_set_offset(s_ship_pri, spr_origin.shipX, spr_origin.shipY);
	sprite_set_offset(s_ship_sec, spr_origin.shipX, spr_origin.shipY);
		//p1
	draw_sprite_ext(s_ship_pri, ship_sprite, x, y, image_xscale*1.25, image_yscale*1.25*-gravdir*movedir, (angleDr*angleMul*-movedir)-(angleMod), c_white, 1);
		//p2
	draw_sprite_ext(s_ship_sec, ship_sprite, x, y, image_xscale*1.25, image_yscale*1.25*-gravdir*movedir, (angleDr*angleMul*-movedir)-(angleMod), c_white, 1);
		//outline
	
	}
	
	
	
	if !global.pause{
		p_angle = -vsp;
	}
	
	
	ship_controls();
 break;
}