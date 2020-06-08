///scr_afterimage(sprite, subimage, x, y, xscale, yscale, rot, colour, alpha, depth)
var AFT;
AFT = instance_create(argument2, argument3, obj_after_image);
AFT.sprite_index = argument0;
AFT.image_speed = 0;
AFT.image_index = argument1;
AFT.image_xscale = argument4;
AFT.image_yscale = argument5;
AFT.image_angle = argument6;
AFT.image_blend = argument7;
AFT.image_alpha = argument8;
AFT.depth = argument9;
AFT.default_depth = argument9;
