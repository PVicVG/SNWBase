/// player_state_eggrobo_shoot

    // Shoot
        if ((animation != "roll" && animation != "grab" && state != STATE_GRAB && state != STATE_ROLL && state != STATE_DEATH) &&
        animation_angle == 0 && input_special_released && instance_number(obj_player_bullet) < 4)
        {
            aud_play_simple(player_shoot);
            
            var x_off, y_off;
            x_off = 38;
            y_off = -25;
            
            if state == STATE_CROUCH
            {
            y_off = -5;
            }
                        
            with instance_create(x + (x_off * animation_direction), y + y_off, obj_player_bullet)
            {
                sprite_index = spr_eggrobo_shot;
            }
        }
