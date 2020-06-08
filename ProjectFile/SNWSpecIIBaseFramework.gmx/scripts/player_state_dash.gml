///player_state_dash()

    // Can Dash
        if ground && !can_dash
        {
            can_dash = true;
        }

    // Trigger Dash
        if (state == STATE_DEFAULT or state == STATE_JUMP or state == STATE_SPRING or state == STATE_FLY or state == STATE_FLYDROP) && input_specialB_pressed && can_dash
        {
            state = STATE_DASH;
            dash_timer = 25;
            can_dash = false;
            obj_camera.cam_lag = 140;
            aud_play_simple(eggrobo_dash);
            
            if animation_angle = 0
            {
               dummy_effect_create_ext(spr_dropdash_dust_big, 0.5, x, bbox_bottom, 5, 0, bm_normal, sign(x_speed), 1, c_white, 1);
            }
        }

    // Handle Dash
        if state == STATE_DASH
        {
            // Speed
                x_speed = 8 * animation_direction;
                y_speed = 0;
                
            // Animation
                animation = "dash";
                
            // Create Dropdash Effects
                if animation_angle = 0 && ground
                {
                dummy_effect_create_ext(spr_dust_8, 1, x, bbox_bottom, 5, 0, bm_normal, sign(x_speed), 1, c_white, 1);
                }
                
            // Timer        
                dash_timer --;
                
                if (dash_timer == -1) or (((player_collision_check(COL_RIGHT, MASK_BIG, x, y, angle, -1)) || (player_collision_check(COL_LEFT, MASK_BIG, x, y, angle, -1))))
                {
                dash_timer = -1;
                state = STATE_DEFAULT;
                }
        }

