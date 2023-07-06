/// @description draw object
var _fcol;
var _scol;

if selected{ _fcol = c_lime; _scol = c_lime; }
else{ _fcol = col01; _scol = col02; }

draw_sprite_ext(tex01, i_index, x, y, image_xscale, image_yscale, image_angle, _fcol, opacity);
if second_tex draw_sprite_ext(tex02, i_index, x, y, image_xscale, image_yscale, image_angle, _scol, opacity);