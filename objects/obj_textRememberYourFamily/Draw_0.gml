/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(fnt_thisIsYourFamily)

for ( var i = 0; i < array_length_1d(x_loc); i++){
	draw_text(x_loc[i], y_loc[i], text[i]);
}
