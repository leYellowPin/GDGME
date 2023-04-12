/// @description Insert description here
// You can write your code in this editor
var pause = keyboard_check_pressed(vk_escape);

if pause{
	global.pause = !global.pause;
	with sys_levelAudio{
		p_ = true;	
	}
}

if !global.pause{
	Ptime += ((delta_time/1000000));
}