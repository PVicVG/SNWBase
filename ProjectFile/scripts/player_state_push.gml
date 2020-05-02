/// player_state_push()
 // Used for pushing against walls.
  
    var push_col_right;
    var push_col_left;
        push_col_right = player_collision_check(COL_RIGHT, MASK_BIG, x, y, angle, -1);
        push_col_left  = player_collision_check(COL_LEFT,  MASK_BIG, x, y, angle, -1); 
        
    // Stop push.
       if(state == STATE_PUSH)
       {
          if((( push_col_left && !input_left && !push_col_right) || (push_col_right && !input_right && !push_col_left) || (!push_col_right && !push_col_left)))
          {
             state      = STATE_DEFAULT;
             push_timer = 0;
          }
       }
    // Trigger pushing.
       if(ground && y_speed == 0)
       {
           if(state != STATE_SPINDASH && state != STATE_LOOKUP && state != STATE_CROUCH)
           {
              if(push_timer >= push_timer_max)
              {
                 state = STATE_PUSH;
              }
              else
              {
                 if(push_col_right && input_right) { push_timer += 0.5 }
                 if(push_col_left  &&  input_left) { push_timer += 0.5 }                 
              }
           }
       }


