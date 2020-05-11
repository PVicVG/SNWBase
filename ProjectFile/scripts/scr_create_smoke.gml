///scr_create_smoke(x, y, sprite)
     var a;
     a = 0;
        repeat(6){
        //Create smoke effect
        with (instance_create(argument0, argument1, obj_smoke)) {
            sprite_index = argument2;
            depth = other.depth;
            motion_set(a, 1);
            a += 60}
        } 
