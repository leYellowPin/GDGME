/// @description draw the player
//don't ask why there's so much code, it just works :)

var angleMod = 90*sideway*movedir;
var angleMul = 1.25;
angleDr = lerp(angleDr, p_angle, .5);

switch(gamemode){
 case "cube":
	sprite_set_offset(cube_sprite, spr_origin.cubeX, spr_origin.cubeY);
	
	if !sideway{
			if !place_meeting(x, y+gravdir, _solid) and !global.pause{
			   p_angle += spd/2*gravdir*movedir;
			}
			if place_meeting(x, y+gravdir, _solid) and !global.pause{
			    p_angle = player_resetAngle(p_angle);
			}
			//p1
			draw_sprite_ext(cube_sprite, 0, x, y, p_xscale, p_yscale, angleDr*-1+angleMod, c_white, 1);
			//p2

	}else{
			if !place_meeting(x+gravdir, y, _solid) and !global.pause{
			   p_angle += spd/2*gravdir*movedir;
			}
			if place_meeting(x+gravdir, y, _solid) and !global.pause{
			    p_angle = player_resetAngle(p_angle);
			}
			//p1
			draw_sprite_ext(cube_sprite, 0, x, y, p_xscale, p_yscale, angleDr+angleMod, c_white, 1);
			//p2
			
	}
	
	cube_controls();
 break;
 case "ship":
	//small cube
		//p1
	/*new offset*/sprite_set_offset(cube_sprite, spr_origin.cubeX, spr_origin.cubeY+(25));
	draw_sprite_ext(cube_sprite, image_index, x, y, image_xscale*.75, image_yscale*.75*gravdir, (angleDr*angleMul)+angleMod, c_white, 1);
	sprite_set_offset(cube_sprite, spr_origin.cubeX, spr_origin.cubeY);
	//ship
		//p1
	draw_sprite_ext(ship_sprite, 0, x, y, image_xscale*1.25, image_yscale*1.25*gravdir, (angleDr*angleMul)+angleMod, c_white, 1);
	sprite_set_offset(cube_sprite, spr_origin.shipX, spr_origin.shipY);
		//p2
		//outline
	
	if !global.pause{
		p_angle = -vsp;
	}
	
	
	ship_controls();
 break;
}