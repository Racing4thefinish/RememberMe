/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(fnt_thisIsYourFamily);
draw_set_alpha(text_fade_alpha);

if ( text_incorrect_timer < text_incorrect_duration){
	draw_text(x_loc, y_loc, text[1]);
} else if ( text_correct_timer < text_correct_duration){
	draw_text(x_loc, y_loc, text[2]);
} else {
	draw_text(x_loc, y_loc, text[0]);
}

draw_set_alpha(1.0);