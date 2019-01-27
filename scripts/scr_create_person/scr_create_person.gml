/// scr_create_person(sprite_base, sprite_boca, sprite_cejas, sprite_nariz, sprite_ojos, image_index_boca, image_index_cejas, image_index_nariz, image_index_ojos)
/// @param1  x_loc
/// @param2  y_loc
/// @param3  sprite_base
/// @param4  sprite_boca
/// @param5  sprite_cejas
/// @param6  sprite_nariz
/// @param7  sprite_ojos
/// @param8  image_index_boca
/// @param9  image_index_cejas
/// @param10 image_index_nariz
/// @param11 image_index_ojos
var x_loc             = argument[0];
var y_loc             = argument[1];
var sprite_base       = argument[2];
var sprite_boca       = argument[3];
var sprite_cejas      = argument[4];
var sprite_nariz      = argument[5];
var sprite_ojos       = argument[6];
var image_index_boca  = argument[7];
var image_index_cejas = argument[8];
var image_index_nariz = argument[9];
var image_index_ojos  = argument[10];

var angle = arctan2(y_loc - 0.5 * room_height, x_loc - 0.5 * room_width);

var ID_person = instance_create_depth(x_loc, y_loc, 0, obj_isPerson);
ID_person.sprite_index_head     = sprite_base;
ID_person.sprite_index_eyes     = sprite_ojos;
ID_person.sprite_index_nose     = sprite_nariz;
ID_person.sprite_index_mouth    = sprite_boca;
ID_person.sprite_index_eyeBrows = sprite_cejas;
ID_person.init_angle            = angle;
ID_person.fade_timer            = 0.0;
ID_person.fade_timer_start      = 1.0;
ID_person.fade_alpha_duration  = angle/(2*pi)*3 + 2;

ID_person.image_index_head     = 0;
ID_person.image_index_eyes     = image_index_ojos;
ID_person.image_index_nose     = image_index_nariz;
ID_person.image_index_mouth    = image_index_boca;
ID_person.image_index_eyeBrows = image_index_cejas;

return ID_person