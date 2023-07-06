// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function editmode_select(){
	if image_index == 0 or image_index == 1{
		sys_levelManager.edit_mode = 0;
	}else
	if image_index == 2 or image_index == 3{
		sys_levelManager.edit_mode = 1;
	}else
	if image_index == 4 or image_index == 5{
		sys_levelManager.edit_mode = 2;
	}
}

function toggle_editorUI(){
	sys_levelEditorUI.editor_ui = !sys_levelEditorUI.editor_ui;
	if sys_levelEditorUI.editor_ui{
		id.y -= 64;
		id.angle = 270;
	}else{
		id.y += 64;	
		id.angle = 90;
		//id.mlimit -= 1;
	}
}

function object_deselect(){
	with inst_parent{
		selected = 0;	
	}
}

function object_move(_btnType){
	var _moveUnitX = 0;
	var _moveUnitY = 0;
	switch(_btnType){
		#region move1
		case "move1_down":
			_moveUnitY = 4;
		break;
		case "move1_left":
			_moveUnitX = -4;
		break;
		case "move1_up":
			_moveUnitY = -4;
		break;
		case "move1_right":
			_moveUnitX = 4;
		break;
		#endregion
		#region move2
		case "move2_down":
			_moveUnitY = 62;
		break;
		case "move2_left":
			_moveUnitX = -62;
		break;
		case "move2_up":
			_moveUnitY = -62;
		break;
		case "move2_right":
			_moveUnitX = 62;
		break;
		#endregion
	}
	
	with inst_parent{
		if selected{
			id.x += _moveUnitX;
			id.y += _moveUnitY;
		}
	}
}

function create_btn(s_index, i_index, _layer, xpos, ypos, second_texture, max_scale, i_angle, btn_mlimit, btn_drawtype, output_mode, _script, _scriptArg, _room, _overlay, o_index){
	var _btn = instance_create_layer(xpos, ypos, _layer, o_button) 
	with _btn{
		sprite_index = s_index;
		image_index = i_index;
		angle = i_angle;
		second_tex = second_texture;
		overlay = _overlay;
		overlay_tex = s_index;
		overlay_index = o_index;
		output = output_mode;
		output_script = _script;
		scrArray = _scriptArg;
		rm_to = _room;
		mlimit = btn_mlimit;
		scale_max = max_scale;
		mode = btn_drawtype;
	}
	
	return _btn;
}


function manage_btn(){
	
	_btnBuild.opacity = editor_ui;
	_btnEdit.opacity = editor_ui;
	_btnDelete.opacity = editor_ui;
	_btnDeselect.opacity = editor_ui;

	_btnMove1down.opacity = editor_ui;
	_btnMove1left.opacity = editor_ui;
	_btnMove1right.opacity = editor_ui;
	_btnMove1up.opacity = editor_ui;
	_btnMove2down.opacity = editor_ui;
	_btnMove2left.opacity = editor_ui;
	_btnMove2right.opacity = editor_ui;
	_btnMove2up.opacity = editor_ui;
	
	instance_deactivate_object(o_button);

	instance_activate_object(_btnBuild);
	instance_activate_object(_btnEdit);
	instance_activate_object(_btnDelete);
	instance_activate_object(_btnDeselect);
	instance_activate_object(_btnEUI);

	switch(sys_levelManager.edit_mode){
		case 0:
			// nothing for now
		break;
		case 1:
			instance_activate_object(_btnMove1down);
			instance_activate_object(_btnMove1left);
			instance_activate_object(_btnMove1right);
			instance_activate_object(_btnMove1up);
		
			instance_activate_object(_btnMove2down);
			instance_activate_object(_btnMove2left);
			instance_activate_object(_btnMove2right);
			instance_activate_object(_btnMove2up);
		break;
		case 2:
			// nothing for now
		break;
	}	
}