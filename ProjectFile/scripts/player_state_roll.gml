/// player_state_roll()
 // The players rolling state.
 
 // Check if we're actually rolling:
    if(ground && state == STATE_ROLL)
    {
       // Decelerate depending on input and direction:
          if(input_left  && x_speed > 0)  { x_speed -= roll_deceleration; if(x_speed < 0) { x_speed = 0; } }
          if(input_right && x_speed < 0)  { x_speed += roll_deceleration; if(x_speed > 0) { x_speed = 0; } }
          
       // Friction:
          x_speed -= min(abs(x_speed), roll_friction)*sign(x_speed);
          
       // Uncurl.
          if(abs(x_speed) < 0.5 && tunnel_lock == 0)
          {
             state = STATE_DEFAULT;
          }
    }else if(!ground && state == STATE_ROLL)
    {
             jump_completed            = true;
             shield_usable             = false;
             state                     = STATE_JUMP;      
    }
 
 // Trigger roll by pressing down:
    if(state == STATE_DEFAULT && ground && abs(x_speed) >= 1.03125 && (input_down && !input_left && !input_right))
    {
       // Change state: 
          state = STATE_ROLL;
          aud_play_sound(player_roll, global.sfx_volume, 1, 0, 0);
    }
 
