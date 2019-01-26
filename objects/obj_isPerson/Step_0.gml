/// Check for pressed
if (true == is_pressed){
	is_pressed = false;
}

if ( true == mouse_check_button_pressed(mb_left) ){
	
	var x1 = x - sprite_get_xoffset(sprite_index_head);
	var y1 = y - sprite_get_yoffset(sprite_index_head);
	var x2 = x1 + sprite_get_width(sprite_index_head);
	var y2 = y1 + sprite_get_height(sprite_index_head);
	
	if ( true == point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2) ){
		show_debug_message("BUTTON PRESSED!")
		is_pressed = true;
		audio_play_sound(snd_index,0,false);
	}
}