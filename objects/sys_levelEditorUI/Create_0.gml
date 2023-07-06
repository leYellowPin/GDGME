/// @description Insert description here
// You can write your code in this editor

editor_ui = 1;


btn_layer1 = layer_create(-128, "btn_layer1");

var _dw = display_get_gui_width();
var _dh = display_get_gui_height();

var _bw = 74;
var _bh = 25;

// build btn
_btnBuild = create_btn(s_BtnType1, 0, btn_layer1, _bw+32, _dh-(_bh*6), true, 1.25, 0, 1, "ui", "execute script", editmode_select, 0, noone, 0, 0);

// edit btn
_btnEdit = create_btn(s_BtnType1, 2, btn_layer1, _bw+32, _dh-(_bh*4)+5, true, 1.25, 0, 1, "ui", "execute script", editmode_select, 0, noone, 0, 0);

// delete btn
_btnDelete = create_btn(s_BtnType1, 4, btn_layer1, _bw+32, _dh-(_bh*2)+10, true, 1.25, 0, 1, "ui", "execute script", editmode_select, 0, noone, 0, 0);


// editor ui toggle btn
_btnEUI = create_btn(s_BtnType2, 2, btn_layer1, _dw-64, _dh-128, true, 1.25, -90, 1, "ui", "execute script", toggle_editorUI, 0, noone, 0, 0);

// deselect btn
_btnDeselect = create_btn(s_BtnType3, 36, btn_layer1, _dw-64, _dh-320, false, 1.25, 0, 1, "ui", "execute script", object_deselect, 0, noone, 0, 0);


var _m1Size = 80;

// Edit tab btn
_btnMove1down = create_btn(s_BtnType3, 0, btn_layer1, 320, _dh-(_bh*6), false, 1.25, 0, 1, "ui", "execute script", object_move, ["move1_down"], noone, 1, 8);
_btnMove1up = create_btn(s_BtnType3, 0, btn_layer1, 320+_m1Size, _dh-(_bh*6), false, 1.25, 0, 1, "ui", "execute script", object_move, ["move1_up"], noone, 1, 27);
_btnMove1left = create_btn(s_BtnType3, 0, btn_layer1, 320+_m1Size*2, _dh-(_bh*6), false, 1.25, 0, 1, "ui", "execute script", object_move, ["move1_left"], noone, 1, 16);
_btnMove1right = create_btn(s_BtnType3, 0, btn_layer1, 320+_m1Size*3, _dh-(_bh*6), false, 1.25, 0, 1, "ui", "execute script", object_move, ["move1_right"], noone, 1, 19);

_btnMove2down = create_btn(s_BtnType3, 0, btn_layer1, 320+_m1Size*4, _dh-(_bh*6), false, 1.25, 0, 1, "ui", "execute script", object_move, ["move2_down"], noone, 1, 9);
_btnMove2up = create_btn(s_BtnType3, 0, btn_layer1, 320+_m1Size*5, _dh-(_bh*6), false, 1.25, 0, 1, "ui", "execute script", object_move, ["move2_up"], noone, 1, 28);
_btnMove2left = create_btn(s_BtnType3, 0, btn_layer1, 320+_m1Size*6, _dh-(_bh*6), false, 1.25, 0, 1, "ui", "execute script", object_move, ["move2_left"], noone, 1, 17);
_btnMove2right = create_btn(s_BtnType3, 0, btn_layer1, 320+_m1Size*7, _dh-(_bh*6), false, 1.25, 0, 1, "ui", "execute script", object_move, ["move2_right"], noone, 1, 20);