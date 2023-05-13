// calculate the player's landing p_angle

function player_angle_control(){
	
	if !sideway{
		if !place_meeting(x,y+2*gravdir,_solid){
		    p_angle += 4.75*gravdir*movedir;//4;//change those if room speed changed
		}
		if p_angle > 450{
		    p_angle = 50;//50;//this too
		}
		if place_meeting(x,y+2*gravdir,_solid){
		    if p_angle < 450 and p_angle > 270{
		        player_resetAngle(360);
		    }else if p_angle < 360 and p_angle > 180{
		        player_resetAngle(270);
		    }else if p_angle < 270 and p_angle > 90{
		        player_resetAngle(180);
		    }else if p_angle < 180 and p_angle > 0{
		        player_resetAngle(90);
		    }
		}
	}else{
		if !place_meeting(x+2*gravdir,y,_solid){
		    p_angle += 4.75*gravdir*movedir;//4;//change those if room speed changed
		}
		if p_angle > 450{
		    p_angle = 50;//50;//this too
		}
		if place_meeting(x+2*gravdir,y,_solid){
		    if p_angle < 450 and p_angle > 270{
		        player_resetAngle(360);
		    }else if p_angle < 360 and p_angle > 180{
		        player_resetAngle(270);
		    }else if p_angle < 270 and p_angle > 90{
		        player_resetAngle(180);
		    }else if p_angle < 180 and p_angle > 0{
		        player_resetAngle(90);
		    }
		}
	}
		
	
	if p_angle >= 360{
	    p_angle = 0;
	}	
}

function player_resetAngle(_r){
	if p_angle > _r{
	    p_angle -= 24;
	    if p_angle <= _r
	    {
	        p_angle = _r;
	    }
	}
else if p_angle < _r {
	    p_angle += 24;
	    if p_angle >= _r{
	        p_angle = _r;
	    }
	}

}