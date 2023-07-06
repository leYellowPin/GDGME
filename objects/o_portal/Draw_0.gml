/// @description Insert description here
// You can write your code in this editor

var _fcol;
var _scol;

if selected{ _fcol = c_lime; _scol = c_lime; }
else{ _fcol = col01; _scol = col02; }

draw_sprite_ext(sprite_index, pfront, x, y, image_xscale, image_yscale, image_angle, _fcol, opacity);