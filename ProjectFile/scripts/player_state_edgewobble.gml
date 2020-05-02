/// player_state_edgewobble();
 // The players edgewobble / balance state.
   
 // Start wobbing.
    if(ground && x_speed == 0 && y_speed == 0 && angle == 0)
    {
       if(state = STATE_DEFAULT || state == STATE_CROUCH || state == STATE_LOOKUP || state = STATE_WOBBLE)
       {
          // Push Sonic if he's on the very edge. Prevents him from jittering like a b****.
             if(player_collision_check(COL_LEFT_EDGE, x, y, 8, -1, -1) && !player_collision_check(COL_RIGHT_EDGE, x, y, 350, -1, -1))
             { 
                if(state == STATE_WOBBLE && !player_collision_check(COL_RIGHT_EDGE, x, y, 345, -1, -1))
                {
                   x         += 3;
                   x_speed    = 0.5;
                   state      = STATE_DEFAULT;
                   animation  = "walk"                   
                }
             }
             if(!player_collision_check(COL_LEFT_EDGE, x, y, 8, -1, -1) && player_collision_check(COL_RIGHT_EDGE, x, y, 350, -1, -1))
             { 
                if(state == STATE_WOBBLE && !player_collision_check(COL_LEFT_EDGE, x, y, 14, -1, -1))
                {
                   x         -= 3;                
                   x_speed    = -0.5;
                   state      = STATE_DEFAULT;
                   animation  = "walk";                   
                }
             }    
          
       // Change animations.     
          if(player_collision_check(COL_LEFT_EDGE, x, y, 8, -1, -1) && !player_collision_check(COL_RIGHT_EDGE, x, y, 350, -1, -1))
          {
             state = STATE_WOBBLE;
             if(animation_direction == 1)
             {
                if(animation != "balance")
                {
                   animation  = "balance";
                }
             }
             if(animation_direction == -1)
             {
                if(animation != "balance alt")
                {
                   animation  = "balance alt";
                }
             }             
          } 
          else 
          if(!player_collision_check(COL_LEFT_EDGE, x, y, 8, -1, -1) && player_collision_check(COL_RIGHT_EDGE, x, y, 350, -1, -1))
          {
             state = STATE_WOBBLE;
             if(animation_direction == 1)
             {
                if(animation != "balance alt")
                {
                   animation  = "balance alt";
                }
             }
             if(animation_direction == -1)
             {
                if(animation != "balance")
                {
                   animation  = "balance";
                }
             }             
          } 
       }
    }
    
 // Stop wobbling.
    if(x_speed <> 0)
    {
       if(state == STATE_WOBBLE) 
       {
          state = STATE_DEFAULT;
       }
    }    
