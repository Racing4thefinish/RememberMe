/// @description Insert description here
// You can write your code in this editor

if ( prevCharacterCounter != global.ID_show_card_controller.character_counter){
	if ( global.ID_show_card_controller.character_counter >= 4){
		instance_destroy(ID_findYourFamily);
		
		var x_loc = 0.5 * room_width;
		var y_loc = 0.5 * room_height;
		instance_create_depth(x_loc, y_loc, 0, obj_textThankYouForPlaying);
	}
}

prevCharacterCounter = global.ID_show_card_controller.character_counter