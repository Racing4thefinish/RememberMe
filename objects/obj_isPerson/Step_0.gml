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
	if ( true == fp_angle){
		angle = init_angle;
		fp_angle = false;
	}
	var rot_vel = global.ID_show_card_controller.rot_vel;
	
	timer += delta_time/1000000.0;
	
	var dt_sec      = delta_time/1000000.0;
	var delta_angle = rot_vel * dt_sec;
	
	angle += delta_angle;
	var rad_angle = angle;
	x = 0.5 * room_width + circle_radius * cos(rad_angle);
	y = 0.5 * room_height + circle_radius * sin(rad_angle);
	
	if ( instance_exists(global.ID_show_card_controller)){
		if ( guess_wrong_counter_prev != global.ID_show_card_controller.guess_wrong_counter){
			guess_wrong_counter_prev = global.ID_show_card_controller.guess_wrong_counter
		}
	}
} else {
	if ( tween_x_timer < tween_x_duration){
		tween_x_timer += delta_time/1000000.0;
		if ( tween_x_timer > tween_x_duration){
			tween_x_timer = tween_x_duration;
		}
		x = script_execute(tween_x_scr, tween_x_timer,tween_x_start, tween_x_delta, tween_x_duration);
	}
	
	if ( tween_y_timer < tween_y_duration){
		tween_y_timer += delta_time/1000000.0;
		if ( tween_y_timer > tween_y_duration){
			tween_y_timer = tween_y_duration;
		}
		y = script_execute(tween_y_scr, tween_y_timer,tween_y_start, tween_y_delta, tween_y_duration);
	}
}

if ( true == fade_and_destroy){
	if ( fade_timer >= fade_timer_start + fade_alpha_duration){
		fade_timer          = 0.0;
		fade_timer_start    = 0.0;
		fade_alpha_duration = 1.0;
		fade_alpha_start    = 1.0;
		fade_alpha_change   = -1.0;
		alarm[0] = room_speed;
	}
}

if ( fade_timer <fade_timer_start + fade_alpha_duration){
	fade_timer += delta_time/1000000.0;
	if (fade_timer > fade_timer_start + fade_alpha_duration){
		fade_timer = fade_timer_start + fade_alpha_duration;
	}
	if ( fade_timer > fade_timer_start ){
		var arg0 = fade_timer - fade_timer_start;
		
		fade_alpha = ease_in_sine(arg0, fade_alpha_start, fade_alpha_change, fade_alpha_duration )
	}
} else {
	fade_alpha = 1.0;	
}