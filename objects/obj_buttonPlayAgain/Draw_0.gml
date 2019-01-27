/// @description Insert description here
// You can write your code in this editor
if ( is_pressed){
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.75);
} else {
	draw_self();	
}

draw_set_color(c_black);
draw_set_font(fnt_playAgain);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(x,y, text_on_button);