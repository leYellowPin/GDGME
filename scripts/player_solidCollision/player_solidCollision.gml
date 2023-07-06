// platformer mode and normal auto-scroller mode in Geometry Dash use a slightly different way of checking collisions
// this function has 2 modes: y-only collision, precise collision
function player_solidCollision(mode, mode0_ceilingCheck){
	if !sideway and !global.pause{
		
		switch(mode){
			case 0:
				
				if place_meeting(x, y+vsp, _solid){
					while !place_meeting(x, y+sign(vsp), _solid){
						y += sign(vsp);
					}
					vsp = 0; //actual vsp
					on_ground = 1;
				} 
				if !place_meeting(x, y+4*gravdir, _solid){on_ground = 0;}
				
				if place_meeting(x, y, _solid){
					for(var n = 0; n<=32; n++){
						if !place_meeting(x, y+(n*gravdir), _solid){
							y += n*gravdir;	
							break;
						}
						if !place_meeting(x, y-(n*gravdir), _solid){
							y -= n*gravdir;
							break;
						}
					}
				}
				
				// ceiling check
				
				var _ceiling = place_meeting(x, y-4*gravdir, _solid);
				
				if _ceiling and mode0_ceilingCheck{
					y += sign(vsp);
					on_ceiling = 1;
				}
				if !_ceiling{on_ceiling = 0;}
				
				var speedX = hsp;
				var speedY = vsp;
				
				//speedX = clamp(speedX, -spd, spd);
				//speedY = clamp(speedY, -max_grav, max_grav);
				
				x += speedX;
				y += speedY;
				
			break;
			case 1:
				var speedX = hsp;
				var speedY = vsp;
				var _arr = move_and_collide(speedX, speedY, _solid, 4, 0, 0, speedX * movedir, speedY);
				
				if array_length(_arr) != 0 and place_meeting(x, y+(4*gravdir), _solid){vsp = 0; on_ground = 1;}//bottom
				if array_length(_arr) != 0 and place_meeting(x, y-(4*gravdir), _solid){vsp = 0; on_ceiling = 1;}//head
	
				if array_length(_arr) == 0 and !place_meeting(x, y+(4*gravdir), _solid){on_ground = 0;}
				if array_length(_arr) == 0 and !place_meeting(x, y-(4*gravdir), _solid){on_ceiling = 0;}
			break;
		}
	}

	if sideway and !global.pause{
		
		switch(mode){
			case 0:
				
				if place_meeting(x+vsp, y, _solid){
					while !place_meeting(x+sign(vsp), y, _solid){
						x += sign(vsp);
					}
					vsp = 0; //actual vsp
					on_ground = 1;
				} 
				if !place_meeting(x+4*gravdir, y, _solid){on_ground = 0;}
				
				// ceiling check
				
				var _ceiling = place_meeting(x-4*gravdir, y, _solid);
				
				if _ceiling and mode0_ceilingCheck{
					x += sign(vsp)*gravdir;
					on_ceiling = 1;
				}
				if !_ceiling{on_ceiling = 0;}
				
				var speedX = vsp;
				var speedY = hsp;
				
				//speedY = clamp(speedY, -spd, spd);
				//speedX = clamp(speedX, -max_grav, max_grav);
				
				x += speedX;
				y += speedY;
				
			break;
			case 1:
				var speedX = vsp;
				var speedY = hsp;
				var _arr = move_and_collide(speedX, speedY, _solid, 4, 0, 0, speedX, speedY * movedir);
				
				if array_length(_arr) != 0 and place_meeting(x+(4*gravdir), y, _solid){vsp = 0; on_ground = 1;}//bottom
				if array_length(_arr) != 0 and place_meeting(x-(4*gravdir), y, _solid){vsp = 0; on_ceiling = 1;}//heat

				if array_length(_arr) == 0 and !place_meeting(x+(4*gravdir), y, _solid){on_ground = 0;}//bottom
				if array_length(_arr) == 0 and !place_meeting(x-(4*gravdir), y, _solid){on_ceiling = 0;}//heat
			break;
		}
		
	}
}