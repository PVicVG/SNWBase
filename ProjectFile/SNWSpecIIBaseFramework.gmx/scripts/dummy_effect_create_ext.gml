///dummy_effect_create_ext(sprite, image speed, x, y, depth, looptimes, blend type, xscale, yscale, color, alpha)
// Creates a dummy effect, though with more properties.
 
    var dummyFX;
    dummyFX = instance_create(argument2, argument3, obj_dummy_effect)
    dummyFX . sprite_index = argument0;
    dummyFX . image_speed  = argument1;
    dummyFX . depth        = argument4;
    dummyFX . loop_times   = argument5;
    dummyFX . blend_type   = argument6;
    dummyFX . image_xscale   = argument7;
    dummyFX . image_yscale   = argument8;
    dummyFX . image_blend   = argument9;
    dummyFX . image_alpha  = argument10;
