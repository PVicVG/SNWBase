/// badnik_simple_collision_check(YSpd Var)
 // Used for basic collision checking. 
 
    return (place_meeting(x, y+sign(argument0), par_solid)) || 
           (argument0 >= 0 && place_meeting(x, y+sign(argument0), par_platform) && !place_meeting(x, y, par_platform));
