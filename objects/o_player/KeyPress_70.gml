/// @description changing gravdir and movedir keybind

if keyboard_check(ord("D")){ gravdir = -gravdir; }
else if keyboard_check(ord("G")){ movedir = -movedir; }
else {sideway = !sideway;}