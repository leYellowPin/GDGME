/// @description initalize

//display_set_gui_size(1920, 1080);

btn_layer1 = layer_create(-5, "btn_layer1");

var _dw = display_get_gui_width();
var _dh = display_get_gui_height();


// play button
with instance_create_layer(x, y, btn_layer1, o_button){
	sprite_index = s_BtnType0;
	image_index = 0;
	x = _dw/2;
	y = _dh/2;
	output = "room";
	mlimit = 0;
	rm_to = rm_level;
	scale_max = 1.4;
	mode = "ui";
}
// garage button
with instance_create_layer(x, y, btn_layer1, o_button){
	sprite_index = s_BtnType0;
	image_index = 1;
	x = _dw/2 -250;
	y = _dh/2;
	output = "noone";
	mlimit = 0;
	scale_max = 1.4;
	mode = "ui";
}
// editor button
with instance_create_layer(x, y, btn_layer1, o_button){
	sprite_index = s_BtnType0;
	image_index = 2;
	x = _dw/2 +250;
	y = _dh/2;
	output = "room";
	mlimit = 0;
	rm_to = rm_level;
	scale_max = 1.4;
	mode = "ui";
}
