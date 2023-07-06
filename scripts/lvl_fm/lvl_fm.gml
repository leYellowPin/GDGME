
function lvl_save(file){
	// create array

	var _save = array_create(0);
	
	// add data to array
	
	#region store level properties
	var _lvlprop = {
		bg : bg_01,
		gr : grnd_01,
		bgc : layer_background_get_blend(layer_background_get_id("Background")),
		grc1 : c_white,
		grc2 : c_white,
		in : instance_number(inst_parent),
		nm : level_name
	}
	array_push(_save, _lvlprop);
	#endregion
	#region store every object properties
	with inst_parent{
		var _inst = {
			obj : object_get_name(object_index),
			x : x,
			y : y,
			sx : image_xscale,
			sy : image_yscale,
			r : image_angle,
			t1 : sprite_get_name(tex01),
			t2 : sprite_get_name(tex02),
			ind : i_index,
			spd : image_speed,
			c1 : col01,
			c2 : col02,
			o : opacity,
			t2c : second_tex,
			visible : visible
		}
		array_push(_save, _inst);
	}
	#endregion
	
	// save level

	var _savej = base64_encode(json_stringify(_save));
	var _savebuffer = buffer_create(string_byte_length(_savej)+1, buffer_fixed, 1);
	buffer_write(_savebuffer, buffer_string, _savej);
	buffer_save(_savebuffer, string(file) + ".level");
	buffer_delete(_savebuffer);

	//show_message("Saved");
}
function lvl_load(file){
	
	if file_exists(string(file) + ".level"){
		with inst_parent {instance_destroy();}
	
		var _loadbuffer = buffer_load(string(file) + ".level");
		var _loadj = buffer_read(_loadbuffer, buffer_string);
		buffer_delete(_loadbuffer);
		
		var _load = json_parse(base64_decode(_loadj)); // raw output
		
		// load levels properties
		
		var _lvlprop = array_shift(_load);
		
		// set loaded levels properties
		with sys_levelManager{
			level_name = _lvlprop.nm;
			level_bg = _lvlprop.bg;
			level_grnd = _lvlprop.gr;
			layer_background_blend(layer_background_get_id("Background"), _lvlprop.bgc);
		}
		
		// load instances
		var _layer;
		while array_length(_load) > 0{
			var _inst = array_pop(_load);
			var _itype = asset_get_index(_inst.obj);
			
			// temp var _layer determine the loaded instances layer
			if _itype == o_solid{ _layer = "solid"; }
			else if _itype == o_nsolid{ _layer = "non_solid"; }
			else if _itype == o_portal{ _layer = "interactable"; }
			
			// set loaded instances properties
			with instance_create_layer(0, 0, _layer, _itype){
				x = _inst.x;
				y = _inst.y;
				image_xscale = _inst.sx;
				image_yscale = _inst.sy;
				image_angle = _inst.r;
				tex01 = asset_get_index(_inst.t1);
				tex02 = asset_get_index(_inst.t2);
				i_index = real(_inst.ind);
				image_speed = real(_inst.spd);
				col01 = _inst.c1;
				col02 = _inst.c2;
				opacity = _inst.o;
				second_tex = _inst.t2c;
				visible = _inst.visible;
				
				if variable_instance_exists(_itype, "portal"){
					portal = real(_inst.ind);	
				}
			}
		}
		//show_message("Loaded");
	}else{
		show_message("Could not find levels");
	}
}