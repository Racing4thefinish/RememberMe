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

if ( true == enable_cirle_motion){
	timer += delta_time/1000000.0;
	
	var rad_angle = init_angle + timer/circle_period*2*pi;
	x = 0.5 * room_width + circle_radius * cos(rad_angle);
	y = 0.5 * room_height + circle_radius * sin(rad_angle);
	
	if ( instance_exists(global.ID_show_card_controller)){
		if ( guess_wrong_counter_prev != global.ID_show_card_controller.guess_wrong_counter){
			circle_period = circle_period - 2.0 * global.ID_show_card_controller.guess_wrong_counter;
			guess_wrong_counter_prev = global.ID_show_card_controller.guess_wrong_counter
		}
	}
}

if ( fade_timer <fade_timer_start + fade_alpha_duration){
	fade_timer += delta_time/1000000.0;
	if (fade_timer > fade_timer_start + fade_alpha_duration){
		fade_timer = fade_timer_start + fade_alpha_duration;
	}
	if ( fade_timer > fade_timer_start ){
		fade_alpha = ease_in_circ(fade_timer - fade_timer_start, fade_alpha_start, fade_alpha_change, fade_alpha_duration )
	}
} else {
	fade_alpha = 1.0;	
}