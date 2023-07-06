/// @description mode switching keybind

if !global.editor exit;

if mode == 0 { mode = 1; }
else if mode == 1 { mode = 0; }

Ptime = 0;
edit_mode = 0;
with inst_parent{ selected = 0; }

with sys_levelAudio{
	p_ = true;	
}