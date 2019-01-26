/// @description Initialize

// IDs for personas
ID_mom      = noone;
ID_dad      = noone;
ID_son      = noone;
ID_daughter = noone;
first_pass  = true;

var x_loc = 0.0;
var y_loc = 0.0;

spr_mom_head = spr_madre_base;
spr_dad_head = spr_madre_base;
spr_son_head = spr_madre_base;
spr_dau_head = spr_madre_base;

spr_mom_eyes = spr_ojos;
spr_dad_eyes = spr_madre_base;
spr_son_eyes = spr_madre_base;
spr_dau_eyes = spr_madre_base;

ds_list_mom_head_image_index      = ds_list_create();
ds_list_mom_eyes_image_index      = ds_list_create();

ds_list_mom_eyes_image_index_temp = ds_list_create();
ds_list_mom_head_image_index_temp = ds_list_create();

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