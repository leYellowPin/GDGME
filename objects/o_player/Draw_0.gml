/// @description draw the player
//don't ask why there's so much code, it just works :)

var angleMod = 90*sideway;
var angleMul = 2;//lerp(angleDr, p_angle, .5);

p_xscale = lerp(p_xscale, p_def_xscale, .125);
p_yscale = lerp(p_yscale, p_def_yscale, .125);


// scaling when sprite is rotated
var _1 = 90;
var _2 = 180;
var _3 = 270;


switch(p_angle){
    case 0:
        scalexDr = p_xscale;
        scaleyDr = p_yscale;
    break;
    case _1:
        scalexDr = p_yscale;
        scaleyDr = p_xscale;
    break;
    case _2:
        scalexDr = p_xscale;
        scaleyDr = p_yscale;
    break;
    case _3:
        scalexDr = p_yscale;
        scaleyDr = p_xscale;
    break;
}



switch(gamemode){
 case "cube":
 
	angleDr = p_angle*movedir*gravdir;
 
	sprite_set_offset(s_cube_pri, spr_origin.cubeX, spr_origin.cubeY);
	sprite_set_offset(s_cube_sec, spr_origin.cubeX, spr_origin.cubeY);
	
	if !sideway{
			
			player_angle_control();
			
			//p1
			draw_sprite_ext(s_cube_pri, costume.cube, x, y, scalexDr, scaleyDr, angleDr*-1+angleMod, c_white, 1);
			//p2
			draw_sprite_ext(s_cube_sec, costume.cube, x, y, scalexDr, scaleyDr, angleDr*-1+angleMod, c_white, 1);

	}else{
			
			player_angle_control();
			//p1
			draw_sprite_ext(s_cube_pri, costume.cube, x, y, scalexDr, scaleyDr, angleDr+angleMod, c_white, 1);
			//p2
			draw_sprite_ext(s_cube_sec, costume.cube, x, y, scalexDr, scaleyDr, angleDr+angleMod, c_white, 1);
			
	}
	
	cube_controls();
 break;
 case "ship":
 
	angleDr = lerp(angleDr, p_angle*movedir, .25);
	
	if !sideway{
	//small cube
		//p1
	/*new offset*/sprite_set_offset(s_cube_pri, spr_origin.cubeX, spr_origin.cubeY+(25));
	draw_sprite_ext(s_cube_pri, costume.cube, x, y, scalexDr*.75*movedir, scaleyDr*.75*gravdir, (angleDr*angleMul)+(angleMod), c_white, 1);
		//p2
	/*new offset*/sprite_set_offset(s_cube_sec, spr_origin.cubeX, spr_origin.cubeY+(25));
	draw_sprite_ext(s_cube_sec, costume.cube, x, y, scalexDr*.75*movedir, scaleyDr*.75*gravdir, (angleDr*angleMul)+(angleMod), c_white, 1);
	
	//ship
	sprite_set_offset(s_ship_pri, spr_origin.shipX, spr_origin.shipY);
	sprite_set_offset(s_ship_sec, spr_origin.shipX, spr_origin.shipY);
		//p1
	draw_sprite_ext(s_ship_pri, costume.ship, x, y, scalexDr*1.25*movedir, scaleyDr*1.25*gravdir, (angleDr*angleMul)+(angleMod), c_white, 1);
		//p2
	draw_sprite_ext(s_ship_sec, costume.ship, x, y, scalexDr*1.25*movedir, scaleyDr*1.25*gravdir, (angleDr*angleMul)+(angleMod), c_white, 1);
		//outline
	
	}else{
	//small cube
		//p1
	/*new offset*/sprite_set_offset(s_cube_pri, spr_origin.cubeX, spr_origin.cubeY+(25));
	draw_sprite_ext(s_cube_pri, costume.cube, x, y, scalexDr*.75*-movedir, scaleyDr*.75*gravdir, (-angleDr*angleMul)+(angleMod), c_white, 1);
		//p2
	/*new offset*/sprite_set_offset(s_cube_sec, spr_origin.cubeX, spr_origin.cubeY+(25));
	draw_sprite_ext(s_cube_sec, costume.cube, x, y, scalexDr*.75*-movedir, scaleyDr*.75*gravdir, (-angleDr*angleMul)+(angleMod), c_white, 1);
	
	//ship
	sprite_set_offset(s_ship_pri, spr_origin.shipX, spr_origin.shipY);
	sprite_set_offset(s_ship_sec, spr_origin.shipX, spr_origin.shipY);
		//p1
	draw_sprite_ext(s_ship_pri, costume.ship, x, y, scalexDr*1.25*-movedir, scaleyDr*1.25*gravdir, (-angleDr*angleMul)+(angleMod), c_white, 1);
		//p2
	draw_sprite_ext(s_ship_sec, costume.ship, x, y, scalexDr*1.25*-movedir, scaleyDr*1.25*gravdir, (-angleDr*angleMul)+(angleMod), c_white, 1);
		//outline
	
	}
	
	
	if !global.pause{
		p_angle = -vsp;
	}
	
	
	ship_controls();
 break;
 case "ball":
 
	angleDr = p_angle*gravdir;
 
	sprite_set_offset(s_ball_pri, spr_origin.ballX, spr_origin.ballY);
	sprite_set_offset(s_ball_sec, spr_origin.ballX, spr_origin.ballY);
	
	if !sideway{
			//p1
			draw_sprite_ext(s_ball_pri, costume.ball, x, y, scalexDr*movedir, scaleyDr, angleDr*-1+angleMod, c_white, 1);
			//p2
			draw_sprite_ext(s_ball_sec, costume.ball, x, y, scalexDr*movedir, scaleyDr, angleDr*-1+angleMod, c_white, 1);
	}else{
			//p1
			draw_sprite_ext(s_ball_pri, costume.ball, x, y, scalexDr*movedir, scaleyDr, angleDr+angleMod, c_white, 1);
			//p2
			draw_sprite_ext(s_ball_sec, costume.ball, x, y, scalexDr*movedir, scaleyDr, angleDr+angleMod, c_white, 1);
	}
	
	p_angle += hsp;
	
	ball_controls();
 break;
 
}