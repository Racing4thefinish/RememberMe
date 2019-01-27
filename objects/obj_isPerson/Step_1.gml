/// @description Insert description here
// You can write your code in this editor
if ( true == create_copy){
	var newID = instance_copy(false);
	newID.enable_cirle_motion = false;
	newID.create_copy = false;
	
	var final_x = 0;
	var final_y = 0;
	
	if ( sprite_index_head == spr_madre_base){
		final_x = 0.5 * sprite_get_width(spr_madre_base) * 1.1;
		final_y = 0.5 * sprite_get_height(spr_madre_base) * 1.1;
	} else if (sprite_index_head == spr_padre_base){
		final_x = room_width - 0.5 * sprite_get_width(spr_padre_base) * 1.1;
		final_y = 0.5 * sprite_get_height(spr_padre_base) * 1.1;
	} else if (sprite_index_head == spr_hijo_base){
		final_x = 0.5 * sprite_get_width(spr_padre_base) * 1.1;
		final_y = room_height - 0.5 * sprite_get_height(spr_padre_base) * 1.1;
	} else{ // if (sprite_index_head == spr_hija_base){
		final_x = room_width - 0.5 * sprite_get_width(spr_hija_base) * 1.1;
		final_y = room_height - 0.5 * sprite_get_height(spr_hija_base) * 1.1;
	}
		
	newID.tween_x_start = x;
	newID.tween_x_delta = final_x - x;
	newID.tween_x_timer = 0.0;
	
	newID.tween_y_start = y;
	newID.tween_y_delta = final_y - y;
	newID.tween_y_timer = 0.0;
	
	create_copy = false;	
}