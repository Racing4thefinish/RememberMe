/// @description Insert description here
// You can write your code in this editor

var x_loc = 0.5 * room_width;
var y_loc = 0.3 * room_height;
var ID_button = instance_create_depth(x_loc, y_loc, 0, obj_button);
ID_button.text_on_button = "Español";
ID_button.script_when_pressed = scr_startGameInSpanish;

y_loc = 0.7 * room_height;
ID_button = instance_create_depth(x_loc, y_loc, 0, obj_button);
ID_button.text_on_button = "English";
ID_button.script_when_pressed = scr_startGameInEnglish;

x_loc = 0.5 * room_width;
y_loc = 0.95 * room_height;
instance_create_depth(x_loc, y_loc, 0, obj_creditsText)