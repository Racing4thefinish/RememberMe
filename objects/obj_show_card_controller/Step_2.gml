/// @description Check for correct button pressed

if (room == rm_hide_cards){
	for (var i = 0; i < ds_list_size(ds_list_ID_obj); i++){
		var ID_obj = ds_list_find_value(ds_list_ID_obj,i);
		if instance_exists(ID_obj){
			if ( true == ID_obj.is_pressed){
				var sprite_index_head_chosen = ID_obj.image_index_head;
				var sprite_index_eyes_chosen = ID_obj.image_index_eyes;
				
				if (correct_eyes_image_index == sprite_index_eyes_chosen){
					show_debug_message("YOU WIN!");
					guess_correct = true;
				} else {
					guess_wrong_counter = guess_wrong_counter + 1;
					instance_destroy(ID_obj);
				}
			}
		}
	}
}