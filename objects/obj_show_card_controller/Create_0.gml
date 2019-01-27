/// @description Initialize

// IDs for personas
ID_mom      = noone;
ID_dad      = noone;
ID_son      = noone;
ID_daughter = noone;
first_pass  = true;

character_counter = -1;
guess_correct     = false;
guess_wrong_counter = 0;

var x_loc = 0.0;
var y_loc = 0.0;

spr_mom_eyes = spr_madre_ojos;
spr_dad_eyes = spr_padre_ojos;
spr_son_eyes = spr_madre_ojos;
spr_dau_eyes = spr_madre_ojos;

correct_mom_eyes_image_index = 0;
correct_dad_eyes_image_index = 0;
correct_son_eyes_image_index = 0;
correct_dau_eyes_image_index = 0;

correct_mom_nose_image_index = 0;
correct_dad_nose_image_index = 0;
correct_son_nose_image_index = 0;
correct_dau_nose_image_index = 0;

ds_list_mom_eyes_image_index = ds_list_create();
ds_list_dad_eyes_image_index = ds_list_create();
ds_list_son_eyes_image_index = ds_list_create();
ds_list_dau_eyes_image_index = ds_list_create();

ds_list_mom_nose_image_index = ds_list_create();
ds_list_dad_nose_image_index = ds_list_create();
ds_list_son_nose_image_index = ds_list_create();
ds_list_dau_nose_image_index = ds_list_create();

//ds_list_mom_snd    = ds_list_create();
ds_list_ID_mom_obj = ds_list_create();
ds_list_ID_dad_obj = ds_list_create();
ds_list_ID_son_obj = ds_list_create();
ds_list_ID_dau_obj = ds_list_create();

ds_list_ID_obj = ds_list_create();

// Initialize the Mom's Eyes image index array
for ( var i = 0; i < sprite_get_number(spr_madre_ojos); i++){
	ds_list_add(ds_list_mom_eyes_image_index,i);
}
for ( var i = 0; i < sprite_get_number(spr_madre_nariz); i++){
	ds_list_add(ds_list_mom_nose_image_index,i);
}


for ( var i = 0; i < sprite_get_number(spr_padre_ojos); i++){
	ds_list_add(ds_list_dad_eyes_image_index,i);
}
for ( var i = 0; i < sprite_get_number(spr_padre_nariz); i++){
	ds_list_add(ds_list_dad_nose_image_index,i);
}


for ( var i = 0; i < sprite_get_number(spr_hijo_ojos); i++){
	ds_list_add(ds_list_son_eyes_image_index,i);
}
for ( var i = 0; i < sprite_get_number(spr_hijo_nariz); i++){
	ds_list_add(ds_list_son_nose_image_index,i);
}


for ( var i = 0; i < sprite_get_number(spr_hija_ojos); i++){
	ds_list_add(ds_list_dau_eyes_image_index,i);
}
for ( var i = 0; i < sprite_get_number(spr_hija_nariz); i++){
	ds_list_add(ds_list_dau_nose_image_index,i);
}