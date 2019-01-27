/// scr_init

global.ID_show_card_controller = noone;
global.language_english        = true;
global.language_espanol        = false;

var x_loc = room_width - 0.5 * sprite_get_width(spr_soundIcon) * 1.1;
var y_loc = 0.5 * sprite_get_width(spr_soundIcon) * 1.1;
instance_create_depth(x_loc, y_loc,0, obj_soundController);

game_set_speed(60, gamespeed_fps);