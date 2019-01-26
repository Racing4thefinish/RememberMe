/// @description Initialize

ID_mom     = noone;
first_pass = true;

var x_loc = 0.0;
var y_loc = 0.0;

spr_mom_head = spr_head;
spr_mom_eyes = spr_eyes;

ds_list_mom_head_image_index      = ds_list_create();
ds_list_mom_head_image_index_temp = ds_list_create();
ds_list_mom_eyes_image_index      = ds_list_create();
ds_list_mom_eyes_image_index_temp = ds_list_create();

//ds_list_mom_snd    = ds_list_create();
ds_list_ID_mom_obj = ds_list_create();

// Initialize the arrays
// Initialize the Mom's Head image index array
for ( var i = 0; i < sprite_get_number(spr_mom_head); i++){
	ds_list_add(ds_list_mom_head_image_index,i);
}
ds_list_copy(ds_list_mom_head_image_index_temp, ds_list_mom_head_image_index);

// Initialize the Mom's Eyes image index array
for ( var i = 0; i < sprite_get_number(spr_mom_eyes); i++){
	ds_list_add(ds_list_mom_eyes_image_index,i);
}
ds_list_copy(ds_list_mom_eyes_image_index_temp, ds_list_mom_eyes_image_index);

/*
// Set the mom's eyes and head Index
correct_mom_head_image_index = irandom(ds_list_size(ds_list_mom_head_image_index) - 1);
correct_mom_eyes_image_index = irandom(ds_list_size(ds_list_mom_eyes_image_index) - 1);

ds_list_delete(ds_list_mom_head_image_index_temp, correct_mom_head_image_index);
ds_list_delete(ds_list_mom_eyes_image_index_temp, correct_mom_eyes_image_index);
*/