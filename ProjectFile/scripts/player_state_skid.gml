/// player_state_skid();
 // The players skidding/sliide state.
 
    // When the input is locked, disable skidding
    if (input_lock_l || input_lock_r)
    {
        if (state == STATE_SKID) state = STATE_DEFAULT;
        exit;
    }
    
    // Trigger skidding
    if (ground == true && input_lock_s == 0 && state == STATE_DEFAULT && input_alarm <= 0)
    {
        if (angle_relative < 45 || angle_relative > 315)
        {
            if ((x_speed <= -4.5 && input_right) or (x_speed >= 4.5 && input_left) && sign(x_speed) == animation_direction)
            {
                if (state != STATE_SKID)
                {
                    state = STATE_SKID;
                    skid_direction = sign(x_speed);
                    animation = "skid";
                    aud_play_sound(player_skidding, global.sfx_volume, 1, 0, 1);
                }
            }
        }
    }
 
    // While skidding, check some stuff
    if (state == STATE_SKID)
    {
        // Return to the normal state
        if (animation == "skid turn" && animation_flags_finished == true) 
        {
            if (!input_left && !input_right) 
            {
                state = STATE_DEFAULT;
                input_alarm = 10;
            }
        }
        if (skid_direction == 1)
        {
            if (input_left)
            {
                if (x_speed > 0){ 
                    x_speed -= x_acceleration*6;
                    if(animation_frame_count mod 5 == 0){
                       instance_create(x, y+13, obj_skid_dust);  
                    }
                }              
                else
                {
                    x_speed = 0;
                    animation_direction = -skid_direction;
                    state = STATE_DEFAULT;
                }
            }
            else if (input_right)
            {
                state = STATE_DEFAULT;
                input_alarm = 10;
            }
        }
        if (skid_direction == -1)
        {
            if (input_right)
            {
                if (x_speed < 0){
                    x_speed += x_acceleration*6;
                    if(animation_frame_count mod 5 == 0){
                       instance_create(x, y+13, obj_skid_dust);  
                    }
                }  
                else
                {
                    x_speed = 0;
                    animation_direction = skid_direction;
                    state = STATE_DEFAULT;
                }
            }
            else if (input_left)
            {
                state = STATE_DEFAULT;
                input_alarm = 10;
            }
        }
        
        if (ground == false){
            state = STATE_DEFAULT;            
        }
     }
