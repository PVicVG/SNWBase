///player_state_fang_bounce()

    // Trigger
        if input_action_pressed && (state == STATE_JUMP) && !ground && !triggered_bounce
        {
            bounce_air_x_speed = 0;
            bounce_air_y_speed = 0;
            state = STATE_FANG_BOUNCE;
            triggered_bounce = true;
        }
    
        if ground && triggered_bounce
        {
            triggered_bounce = false;
        }
        
    // Handle
        if (state == STATE_FANG_BOUNCE)
        {
            if (ground)
            {
                // Stop While in the ground
                    if abs(x_speed) > 2
                    {
                        bounce_air_x_speed = abs(x_speed);
                    }
                    x_speed = 0;
                    
                // Timer Start
                    if ground_timer == -1
                    {
                        ground_timer = 15;
                    }
                    
                // Timer Reached 0, Launch Fang!
                    if ground_timer == 0
                    {
                        ground = false;
                        ground_timer = -1;
                        
                        if (input_right or input_left)
                        {
                            x_speed = (max(5, bounce_air_x_speed)) * animation_direction;
                        }
                        else
                        {
                            x_speed = animation_direction;
                        }
                        
                        y_speed = -7.5; 
                        aud_play_simple(player_bounce);
                        bounce_air_x_speed = 0;
                        bounce_air_y_speed = 0;
                    }
                    
                // Reduce Timer
                    if ground_timer > -1
                    {
                        ground_timer -= 1;
                    }
                
                
            }
        }
    
    // Untrigger
        if !input_action && state == STATE_FANG_BOUNCE
        {
            state = STATE_DEFAULT;
        }
