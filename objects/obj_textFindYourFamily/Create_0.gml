/// @description Text For Opening Level
if ( true == global.language_espanol){
	text[0] = "Encuentra a tu familia";
	text[1] = "Incorrecto";
	text[2] = "Correcto";
} else {
	text[0] = "Find Your Family";
	text[1] = "Inncorrect."
	text[2] = "Correct";
}

x_loc = 0.5 * room_width;
y_loc = 0.5 * room_height;

text_index = 0;

text_fade_duration = 0.5;
text_fade_timer    = 0.0;
text_fade_delta    = 1.0;
text_fade_init     = 0.0;
text_fade_alpha    = 0.0;

guess_wrong_counter_prev = global.ID_show_card_controller.guess_wrong_counter;
character_counter_prev   = global.ID_show_card_controller.character_counter;

text_incorrect_duration = 1.0;
text_incorrect_timer    = text_incorrect_duration + 1;

text_correct_duration = 1.0;
text_correct_timer    = text_correct_duration + 1;