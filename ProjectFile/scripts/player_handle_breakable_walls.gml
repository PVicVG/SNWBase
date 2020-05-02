/// player_handle_breakable_walls()
 // Script for breakable walls.
 
 // All Characters.
    var breakable_wall;
        breakable_wall = instance_nearest(x, y, par_collision_breakable_wall);
        if(breakable_wall != noone && (player_index == CHAR_KNUCKLES || state == STATE_ROLL || shield_state == 1 || state == STATE_GLIDE || state == STATE_SLIDE) && (player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, breakable_wall)))
        {
           with(breakable_wall)
           {
                broken     = true;           
                pieces_dir = -1;
                instance_destroy();                
           }
        }
        if(breakable_wall != noone && (player_index == CHAR_KNUCKLES || state == STATE_ROLL || shield_state == 1 || state == STATE_GLIDE || state == STATE_SLIDE) && (player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, breakable_wall)))
        {
           with(breakable_wall)
           {
                broken     = true;
                pieces_dir = 1;
                instance_destroy();
           }
        }        
 
 // Knuckles only.
    var breakable_wall_knux;
        breakable_wall_knux = instance_nearest(x, y, par_collision_breakable_wall_knuckles);
        if(breakable_wall_knux != noone && player_index == CHAR_KNUCKLES && (player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, breakable_wall_knux)))
        {
           with(breakable_wall_knux)
           {
                broken     = true;           
                pieces_dir = -1;
                instance_destroy();                
           }
        }
        if(breakable_wall_knux != noone && player_index == CHAR_KNUCKLES && (player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, breakable_wall_knux)))
        {
           with(breakable_wall_knux)
           {
                broken     = true;           
                pieces_dir = 1;
                instance_destroy();
           }
        }        
