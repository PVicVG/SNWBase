/// player_handle_obstacles()
 // Makes sure to keep the angle at zero.
  
    if(player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, par_obstacles))
    {
       player_angle(0);
    }

