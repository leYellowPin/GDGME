// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_to(input, output, amount){
	
	if input >output{
	    input-=amount;
	    if input <= output{input=output;}
	}
	else
	if input<output{
	    input+=amount;
		if input >= output{input=output;}
	}
	
}