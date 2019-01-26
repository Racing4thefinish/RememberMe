/// Initialize

ID_mom = noone;

var x_loc = room_width/2.0;
var y_loc = room_height/2.0;

ID_mom = instance_create_depth(x_loc, y_loc, 0, obj_mom);

mom_sprite = ID_mom.spr_choose;
mom_sound  = ID_mom.snd;