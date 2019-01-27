/// @description Insert description here
// You can write your code in this editor

turn_on_sound  = false;
turn_off_sound = false;

if ( true == fp){
	ID_music    = audio_play_sound(snd_backGroundMusic,0,true);
	music_is_on = true;
	fp          = false;
}
if ( true == mouse_check_button_pressed(mb_left) ){
	
	var x1 = x - sprite_get_xoffset(sprite_index);
	var y1 = y - sprite_get_yoffset(sprite_index);
	var x2 = x1 + sprite_get_width(sprite_index);
	var y2 = y1 + sprite_get_height(sprite_index);
	
	if ( true == point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2) ){
		if ( true == music_is_on){
			turn_off_sound = true;
		} else {
			turn_on_sound = true;
		}
		audio_play_sound(snd_index,0,false);
	}
}


if ( true == turn_on_sound){
	//audio_sound_gain(ID_music, 0, 0);
    audio_sound_gain(ID_music, 1, 500);
	music_is_on   = true;
} else if ( true == turn_off_sound){
	//audio_stop_sound(ID_music);
	
	//audio_sound_gain(ID_music, 1, 0);
    audio_sound_gain(ID_music, 0, 500);
	music_is_on    = false;
}

if ( true == music_is_on){
	image_index = 0;
} else {
	image_index = 1;
}

if (room != rm_selectLanguage){
	x = -sprite_get_width(sprite_index);
	y = -sprite_get_height(sprite_index);
} else {
	x = x_init;
	y = y_init;
}