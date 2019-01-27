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