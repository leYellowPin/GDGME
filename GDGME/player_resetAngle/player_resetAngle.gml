// calculate the player's landing angle

function player_resetAngle(_r){
	var _r_check = 45;

	if _r <= 0+_r_check{
	  _r = 0;
	}
	if _r > 0+_r_check{
	  if _r <= 90+_r_check{
	    _r = 90;
	  }
	}
	if _r > 90+_r_check{
	  if _r <= 180+_r_check{
	    _r = 180;
	  }
	}
	if _r > 180+_r_check{
	  if _r <= 270+_r_check{
	    _r = 270;
	  }
	}
	if _r > 270+_r_check{
	  if _r <= 360+_r_check{
	    _r = 0;
	  }
	} 

	if _r > 360{
	    _r = 0;
	}
	
	
	return _r;
}