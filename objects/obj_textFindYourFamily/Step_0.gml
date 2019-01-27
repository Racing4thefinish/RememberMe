/// @description Insert description here
// You can write your code in this editor

if ( text_fade_timer < text_fade_duration){
	text_fade_timer += delta_time/1000000.0;
	if (text_fade_timer > text_fade_duration){
		text_fade_timer = text_fade_duration;
	}
	text_fade_alpha = ease_in_circ(text_fade_timer, text_fade_init, text_fade_delta, text_fade_duration);
} else {
	text_fade_alpha = 1.0;
}

if (guess_wrong_counter_prev != global.ID_show_card_controller.guess_wrong_counter){
	text_incorrect_timer = 0;
}

if ( character_counter_prev   != global.ID_show_card_controller.character_counter){
	text_correct_timer = 0;
}

if ( text_incorrect_timer < text_incorrect_duration){
	text_incorrect_timer += delta_time/1000000.0;
} else {
	text_index = 0;	
}

if ( text_correct_timer < text_correct_duration){
	text_correct_timer += delta_time/1000000.0;
}

guess_wrong_counter_prev = global.ID_show_card_controller.guess_wrong_counter;
character_counter_prev   = global.ID_show_card_controller.character_counter