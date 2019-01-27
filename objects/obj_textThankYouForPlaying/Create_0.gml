/// @description Insert description here
// You can write your code in this editor
if ( true == global.language_espanol){
	text[0]  = "Gracias por jugar";
} else {
	text[0]  = "Thank you for playing";
}

x_loc[0] = 0.5 * room_width;
y_loc[0] = 0.5 * room_height;

text_fade_duration = 0.5;
text_fade_timer    = 0.0;
text_fade_delta    = 1.0;
text_fade_init     = 0.0;
text_fade_alpha    = 0.0;