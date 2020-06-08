/// player_handle_breakable_walls()
 // Script for breakable walls.
 
 // All Characters.
    var breakable_wall;
        breakable_wall = instance_nearest(x, y, par_collision_breakable_wall);
        if(breakable_wall != noone && (player_index == CHAR_KNUCKLES || state == STATE_ROLL || shield_state == 1 || state == STATE_GLIDE || state == STATE_SLIDE || boosting) && (player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, breakable_wall)))
        {
           with(breakable_wall)
           {
                broken     = true;           
                pieces_dir = -1;
                instance_destroy();                
           }
        }
        if(breakable_wall != noone && (player_index == CHAR_KNUCKLES || state == STATE_ROLL || shield_state == 1 || state == STATE_GLIDE || state == STATE_SLIDE || boosting) && (player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, breakable_wall)))
        {
           with(breakable_wall)
           {
                broken     = true;
                pieces_dir = 1;
                instance_destroy();
           }
        }     
        if(breakable_wall != noone && (state = STATE_JUMP && y_speed > 0 && animation = "roll") && (player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y+6, angle, instance_nearest(x, y, obj_breakable_block))))
        {
        y_speed  = max(-4, y_speed*-1); 
                   ground  = false;      
           with(instance_nearest(x, y, obj_breakable_block))
           {
           aud_play_sound(general_destroy, global.sfx_volume, 1, 0, 0);
                broken     = true;
                pieces_dir = 1;
                pieces_dir = -1;
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
