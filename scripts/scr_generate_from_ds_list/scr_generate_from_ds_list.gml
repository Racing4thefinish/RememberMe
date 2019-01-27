/// scr_generate_from_ds_list
var x_loc = argument[0];
var y_loc = argument[1];
var ds_list_head_image_index = argument[2];
var ds_list_eyes_image_index = argument[3];

var pos_head_index = irandom(ds_list_size(ds_list_head_image_index) - 1);
var pos_eyes_index = irandom(ds_list_size(ds_list_eyes_image_index) - 1);
var correct_head_image_index = ds_list_find_value(ds_list_head_image_index, pos_head_index);
var correct_eyes_image_index = ds_list_find_value(ds_list_eyes_image_index, pos_eyes_index);

var ID_person = instance_create_depth(x_loc, y_loc, 0, obj_isPerson);
ID_person.sprite_index_head = spr_mom_head;
ID_person.sprite_index_eyes = spr_mom_eyes;
ID_person.image_index_head  = correct_head_image_index;
ID_person.image_index_eyes  = correct_eyes_image_index;

