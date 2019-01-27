/// @description Insert description here
// You can write your code in this editor

if ( true == mouse_check_button_pressed(mb_left) ){
	
	var x1 = x - sprite_get_xoffset(sprite_index);
	var y1 = y - sprite_get_yoffset(sprite_index);
	var x2 = x1 + sprite_get_width(sprite_index);
	var y2 = y1 + sprite_get_height(sprite_index);
	
	if ( true == point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2) ){
		show_debug_message("BUTTON PRESSED!")
		is_pressed = true;
		audio_play_sound(snd_index,0,false);
	}
}

if ( is_pressed_prev != is_pressed ){
	delay_timer = 0.0;
}

if ( delay_timer < delay_duration){
	delay_timer += delta_time/1000000.0;
}

if ( true == is_pressed && delay_timer >= delay_duration){
	show_debug_message("Executing Script");
	script_execute(script_when_pressed);
}

is_pressed_prev = is_pressed;