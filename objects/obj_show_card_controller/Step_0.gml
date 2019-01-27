/// @description Create the cards

if ( true == first_pass){
	if (room == rm_show_cards){
		
		var x_loc = 0.5 * room_width;
		var y_loc = 0.5 * room_height;
		
		var spr_index_boca  = 0;
		var spr_index_cejas = 0;
		var spr_index_nariz = 0;
		var spr_index_ojos  = 0;
		
		// Create the mom
		var pos_eyes_index           = irandom(ds_list_size(ds_list_mom_eyes_image_index) - 1);
		var pos_nose_index           = irandom(ds_list_size(ds_list_mom_nose_image_index) - 1);
		correct_mom_eyes_image_index = ds_list_find_value(ds_list_mom_eyes_image_index, pos_eyes_index);
		correct_mom_nose_image_index = ds_list_find_value(ds_list_mom_nose_image_index, pos_nose_index);
		spr_index_ojos               = correct_mom_eyes_image_index;
		spr_index_nariz              = correct_mom_nose_image_index;
		
		x_loc      = 0.25 * room_width;
		y_loc      = 0.25 * room_height;
		var ID_mom = scr_create_person(x_loc, y_loc, spr_madre_base, spr_madre_boca, spr_madre_cejas, spr_madre_nariz, spr_madre_ojos, spr_index_boca, spr_index_cejas,spr_index_nariz, spr_index_ojos);
		ds_list_add(ds_list_ID_mom_obj, ID_mom);
		
		// Create the Dad
		pos_eyes_index                 = irandom(ds_list_size(ds_list_dad_eyes_image_index) - 1);
		pos_nose_index                 = irandom(ds_list_size(ds_list_dad_nose_image_index) - 1);
		correct_padre_eyes_image_index = ds_list_find_value(ds_list_dad_eyes_image_index, pos_eyes_index);
		correct_padre_nose_image_index = ds_list_find_value(ds_list_dad_nose_image_index, pos_nose_index);
		spr_index_ojos                 = correct_padre_eyes_image_index;
		spr_index_nariz                = correct_padre_nose_image_index;
		
		x_loc      = 0.75 * room_width;
		y_loc      = 0.25 * room_height;
		var ID_Dad = scr_create_person(x_loc, y_loc, spr_padre_base, spr_padre_boca, spr_padre_cejas, spr_padre_nariz, spr_padre_ojos, spr_index_boca, spr_index_cejas,spr_index_nariz, spr_index_ojos);
		ds_list_add(ds_list_ID_dad_obj, ID_Dad);
		
		
		// Create the Son
		pos_eyes_index               = irandom(ds_list_size(ds_list_son_eyes_image_index) - 1);
		pos_nose_index               = irandom(ds_list_size(ds_list_son_nose_image_index) - 1);
		correct_son_eyes_image_index = ds_list_find_value(ds_list_son_eyes_image_index, pos_eyes_index);
		correct_son_nose_image_index = ds_list_find_value(ds_list_son_nose_image_index, pos_nose_index);
		spr_index_ojos               = correct_son_eyes_image_index;
		spr_index_nariz               = correct_son_nose_image_index;
		
		x_loc      = 0.75 * room_width;
		y_loc      = 0.75 * room_height;
		var ID_son = scr_create_person(x_loc, y_loc, spr_padre_base, spr_padre_boca, spr_padre_cejas, spr_padre_nariz, spr_padre_ojos, spr_index_boca, spr_index_cejas,spr_index_nariz, spr_index_ojos);
		ds_list_add(ds_list_ID_son_obj, ID_son);
		
		// Create the sister
		pos_eyes_index           = irandom(ds_list_size(ds_list_dau_eyes_image_index) - 1);
		pos_nose_index           = irandom(ds_list_size(ds_list_dau_nose_image_index) - 1);
		correct_dau_eyes_image_index = ds_list_find_value(ds_list_dau_eyes_image_index, pos_eyes_index);
		correct_dau_nose_image_index = ds_list_find_value(ds_list_dau_nose_image_index, pos_nose_index);
		spr_index_ojos               = correct_dau_eyes_image_index;
		spr_index_nariz              = correct_dau_nose_image_index;
		
		x_loc      = 0.25 * room_width;
		y_loc      = 0.75 * room_height;
		var ID_daughter = scr_create_person(x_loc, y_loc, spr_hija_base, spr_hija_boca, spr_hija_cejas, spr_hija_nariz, spr_hija_ojos, spr_index_boca, spr_index_cejas,spr_index_nariz, spr_index_ojos);
		ds_list_add(ds_list_ID_dau_obj, ID_daughter);
		
	} else if ( room == rm_hide_cards) {
		var ds_list_eyes_image_index_temp     = ds_list_create();
		var ds_list_eyes_image_index_source   = 0;
		correct_eyes_image_index              = 0;
		var ds_list_nose_image_index_temp     = ds_list_create();
		var ds_list_nose_image_index_source   = 0;
		correct_nose_image_index              = 0;
		var ds_list_key                       = ds_list_create();
		var rnd_pos_ds_list_key               = 0;
		var rnd_val_ds_list_key               = 0;
		var spr_base                          = spr_madre_base;
		var spr_boca                          = spr_madre_boca;
		var spr_cejas                         = spr_madre_cejas;
		var spr_nariz                         = spr_madre_nariz;
		var spr_ojos                          = spr_madre_ojos;
		var pos_eyes_index                    = 0;
		var image_index_boca                  = 0;
		var image_index_cejas                 = 0;
		var image_index_nariz                 = 0;
		var image_index_ojos                  = 0;
		var x_loc                             = 0.0;
		var y_loc                             = 0.0;
		var pos_of_correct_mom                = 0;
		
		if ( character_counter == 0){
			ds_list_eyes_image_index_source = ds_list_mom_eyes_image_index;
			ds_list_nose_image_index_source = ds_list_mom_nose_image_index;
			correct_eyes_image_index        = correct_mom_eyes_image_index;
			correct_nose_image_index        = correct_mom_nose_image_index;
			spr_base                        = spr_madre_base;
		    spr_boca                        = spr_madre_boca;
		    spr_cejas                       = spr_madre_cejas;
		    spr_nariz                       = spr_madre_nariz;
		    spr_ojos                        = spr_madre_ojos;
		} else if ( character_counter == 1){
			ds_list_eyes_image_index_source = ds_list_dad_eyes_image_index;
			ds_list_nose_image_index_source = ds_list_dad_nose_image_index;
			correct_eyes_image_index        = correct_dad_eyes_image_index;
			correct_nose_image_index        = correct_dad_nose_image_index;
			spr_base                        = spr_padre_base;
		    spr_boca                        = spr_padre_boca;
		    spr_cejas                       = spr_padre_cejas;
			spr_nariz                       = spr_padre_nariz;
		    spr_ojos                        = spr_padre_ojos;
		} else if ( character_counter == 2){
			ds_list_eyes_image_index_source = ds_list_son_eyes_image_index;
			ds_list_nose_image_index_source = ds_list_son_nose_image_index;
			correct_eyes_image_index        = correct_son_eyes_image_index;
			correct_nose_image_index        = correct_son_nose_image_index;
			spr_base                        = spr_padre_base;
		    spr_boca                        = spr_padre_boca;
		    spr_cejas                       = spr_padre_cejas;
			spr_nariz                       = spr_padre_nariz;
		    spr_ojos                        = spr_padre_ojos;
		} else if (character_counter == 3){
			ds_list_eyes_image_index_source = ds_list_dau_eyes_image_index;
			ds_list_nose_image_index_source = ds_list_dau_nose_image_index;
			correct_eyes_image_index        = correct_dau_eyes_image_index;
			correct_nose_image_index        = correct_dau_nose_image_index;
			spr_base                        = spr_hija_base;
		    spr_boca                        = spr_hija_boca;
		    spr_cejas                       = spr_hija_cejas;
			spr_nariz                       = spr_hija_nariz;
		    spr_ojos                        = spr_hija_ojos;
		}
		
		ds_list_copy(ds_list_eyes_image_index_temp, ds_list_eyes_image_index_source);
		ds_list_copy(ds_list_nose_image_index_temp, ds_list_nose_image_index_source);
		
		var length_eyes  = ds_list_size(ds_list_eyes_image_index_temp);
		var length_nose  = ds_list_size(ds_list_nose_image_index_temp);
		
		// Remove the correct eyes from the ds_list
		/*
		var pos_correct_eyes_index = ds_list_find_index(ds_list_eyes_image_index_temp, correct_eyes_image_index);
		var pos_correct_nose_index = ds_list_find_index(ds_list_eyes_image_index_temp, correct_nose_image_index);
		ds_list_delete(ds_list_eyes_image_index_temp, pos_correct_eyes_index);
		ds_list_delete(ds_list_nose_image_index_temp, pos_correct_nose_index);
		*/
		var num_parents = length_eyes * length_nose;
		
		pos_of_correct_mom = irandom(num_parents - 1);
		
		for (var i = 0; i < num_parents; i++){
			ds_list_add(ds_list_key,i);
		}
		
		for ( var i = 0; i < num_parents; i++){
			rnd_pos_ds_list_key = irandom(ds_list_size(ds_list_key) - 1);
			rnd_val_ds_list_key = ds_list_find_value(ds_list_key, rnd_pos_ds_list_key)
			ds_list_delete(ds_list_key, rnd_pos_ds_list_key);
			
			pos_eyes_index      = rnd_val_ds_list_key mod length_eyes;
			pos_nose_index      = floor(rnd_val_ds_list_key/length_eyes);
		
			var temp_eyes_image_index = ds_list_find_value(ds_list_eyes_image_index_temp, pos_eyes_index);
			var temp_nose_image_index = ds_list_find_value(ds_list_nose_image_index_temp, pos_nose_index);
		
			var image_index_ojos          = temp_eyes_image_index;
			var image_index_nariz         = temp_nose_image_index;
			
			if ( i mod 2 == 0){
				x_loc = 0.5 * room_width - 0.5 * sprite_get_width(spr_madre_base) * 1.05;;
			} else {
				x_loc = 0.5 * room_width + 0.5 * sprite_get_width(spr_madre_base) * 1.05;;
			}
			
			if ( i < 2 ){
				y_loc = 0.5 * room_height - 0.5 * sprite_get_height(spr_madre_base) * 1.05;
			} else {
				y_loc = 0.5 * room_height + 0.5 * sprite_get_height(spr_madre_base) * 1.05;
			}
			
			var ID_person = scr_create_person(x_loc, y_loc, spr_base, spr_boca, spr_cejas, spr_nariz, spr_ojos, image_index_boca, image_index_cejas, image_index_nariz, image_index_ojos);
			ds_list_add(ds_list_ID_obj, ID_person);
		}
		
		
		/*
		for (var i = 0; i < num_parents; i++){
			
			if ( i mod 2 == 0){
				x_loc = 0.5 * room_width - 0.5 * sprite_get_width(spr_madre_base) * 1.05;;
			} else {
				x_loc = 0.5 * room_width + 0.5 * sprite_get_width(spr_madre_base) * 1.05;;
			}
			
			if ( i < 2 ){
				y_loc = 0.5 * room_height - 0.5 * sprite_get_height(spr_madre_base) * 1.05;
			} else {
				y_loc = 0.5 * room_height + 0.5 * sprite_get_height(spr_madre_base) * 1.05;
			}
			if ( i == pos_of_correct_mom){
				image_index_ojos  = correct_eyes_image_index;
				image_index_nariz = correct_nose_image_index;
				
				var ID_person = scr_create_person(x_loc, y_loc, spr_base, spr_boca, spr_cejas, spr_nariz, spr_ojos, image_index_boca, image_index_cejas,  image_index_nariz, image_index_ojos);
				ds_list_add(ds_list_ID_obj, ID_person);
			} else {
				pos_eyes_index                = irandom(ds_list_size(ds_list_eyes_image_index_temp) - 1);
				var temp_mom_eyes_image_index = ds_list_find_value(ds_list_eyes_image_index_temp, pos_eyes_index);
				var image_index_ojos          = temp_mom_eyes_image_index;
				
				var ID_person = scr_create_person(x_loc, y_loc, spr_base, spr_boca, spr_cejas, spr_nariz, spr_ojos, image_index_boca, image_index_cejas, image_index_nariz, image_index_ojos);
				ds_list_add(ds_list_ID_obj, ID_person);
				
				ds_list_delete(ds_list_eyes_image_index_temp, pos_eyes_index);
			}
		}
		*/
		ds_list_destroy(ds_list_eyes_image_index_temp);
	}
	first_pass = false;
}

var button_pressed = false;
var gotoNextRoom   = false;
if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any) ){
	button_pressed = true;
}

if ( room == rm_show_cards && true == button_pressed){
	gotoNextRoom = true;
}
if ( true == gotoNextRoom || true == guess_correct){
	
	character_counter++;
	
	// remove all instances from the room
	for (var i = 0; i < ds_list_size(ds_list_ID_obj); i++){
		var ID_obj = ds_list_find_value(ds_list_ID_obj,i);
		if instance_exists(ID_obj){
			instance_destroy(ID_obj);
		}
	}
	
	// Goto the next room
	if ( room_exists(room + 1)){
		
		room_goto_next();
	} else {
		
		if ( character_counter > 3 ){
			room_goto_previous();
			character_counter = -1;
		}
	}
	first_pass    = true;
	guess_correct = false;
}