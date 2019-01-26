/// @description Create the cards

if ( true == first_pass){
	if (room == rm_show_cards){
		
		// Set the temporary ds_lists
		ds_list_copy(ds_list_mom_head_image_index_temp, ds_list_mom_head_image_index);
		ds_list_copy(ds_list_mom_eyes_image_index_temp, ds_list_mom_eyes_image_index);
		
		// Set the mom's eyes and head Index
		var pos_head_index = irandom(ds_list_size(ds_list_mom_head_image_index) - 1);
		var pos_eyes_index = irandom(ds_list_size(ds_list_mom_eyes_image_index) - 1);
		correct_mom_head_image_index = ds_list_find_value(ds_list_mom_head_image_index, pos_head_index);
		correct_mom_eyes_image_index = ds_list_find_value(ds_list_mom_eyes_image_index, pos_eyes_index);
		
		// Remove the index from the ds_list
		ds_list_delete(ds_list_mom_head_image_index_temp, pos_head_index);
		ds_list_delete(ds_list_mom_eyes_image_index_temp, pos_eyes_index);
		
		// Generate the correct mother card
		var x_loc = 0.5 * room_width;
		var y_loc = 0.5 * room_height;
		ID_mom = instance_create_depth(x_loc, y_loc, 0, obj_isPerson);
		ID_mom.sprite_index_head = spr_mom_head;
		ID_mom.sprite_index_eyes = spr_mom_eyes;
		ID_mom.image_index_head  = correct_mom_head_image_index;
		ID_mom.image_index_eyes  = correct_mom_eyes_image_index;
		ds_list_add(ds_list_ID_mom_obj, ID_mom);
		
	} else if ( room == rm_hide_cards) {
		
		var length_heads = ds_list_size(ds_list_mom_head_image_index_temp) + 1; // The "+1" is to accomodate the already made one
		var length_eyes  = ds_list_size(ds_list_mom_eyes_image_index_temp) + 1; // The "+1" is to accomodate the already made one
		
		var num_parents = min(length_heads, length_eyes);
		
		var pos_of_correct_mom = irandom(num_parents - 1);
		
		var x_loc = 0.5 * room_width - 0.5 * sprite_get_width(spr_head) * (num_parents-1);
		var y_loc = 0.5 * room_height;
		for (var i = 0; i < num_parents; i++){
			
			if ( i == pos_of_correct_mom){
				ID_mom = instance_create_depth(x_loc, y_loc, 0, obj_isPerson);
				ID_mom.sprite_index_head = spr_mom_head;
				ID_mom.sprite_index_eyes = spr_mom_eyes;
				ID_mom.image_index_head  = correct_mom_head_image_index;
				ID_mom.image_index_eyes  = correct_mom_eyes_image_index;
				ds_list_add(ds_list_ID_mom_obj, ID_mom);
			} else {
				var pos_head_index            = irandom(ds_list_size(ds_list_mom_head_image_index_temp) - 1);
				var pos_eyes_index            = irandom(ds_list_size(ds_list_mom_eyes_image_index_temp) - 1);
				var temp_mom_head_image_index = ds_list_find_value(ds_list_mom_head_image_index_temp, pos_head_index);
				var temp_mom_eyes_image_index = ds_list_find_value(ds_list_mom_eyes_image_index_temp, pos_eyes_index);
		
				ID_mom_temp = instance_create_depth(x_loc, y_loc, 0, obj_isPerson);
				ID_mom_temp.sprite_index_head = spr_mom_head;
				ID_mom_temp.sprite_index_eyes = spr_mom_eyes;
				ID_mom_temp.image_index_head  = temp_mom_head_image_index;
				ID_mom_temp.image_index_eyes  = temp_mom_eyes_image_index;
				ds_list_add(ds_list_ID_mom_obj, ID_mom_temp);
		
				// Remove the index from the ds_list
				ds_list_delete(ds_list_mom_head_image_index_temp, pos_head_index);
				ds_list_delete(ds_list_mom_eyes_image_index_temp, pos_eyes_index);
			}
			
			x_loc += sprite_get_width(spr_mom_head) * 1.05;
		}
		
		/*
		// Generate the correct mother card
		var x_loc = 0.5 * room_width;
		var y_loc = 0.5 * room_height;
		
		
		var length_heads = ds_list_size(ds_list_mom_head_image_index_temp);
		var length_eyes  = ds_list_size(ds_list_mom_eyes_image_index_temp);
		
		var num_parents = min(length_heads, length_eyes);
		
		// Create the other "Moms"
		*/
	}
	first_pass = false;
}

if ( keyboard_check_pressed(vk_enter)){
	
	// remove all instances from the room
	for (var i = 0; i < ds_list_size(ds_list_ID_mom_obj); i++){
		var ID_obj = ds_list_find_value(ds_list_ID_mom_obj,i);
		if instance_exists(ID_obj){
			instance_destroy(ID_obj);
		}
	}
	
	// Goto the next room
	if ( room_exists(room + 1)){
		room_goto_next();
	} else {
		room_goto(rm_show_cards);
	}
	first_pass = true;
}