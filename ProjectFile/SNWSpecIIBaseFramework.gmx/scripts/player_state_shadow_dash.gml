// Dashes
    if ground && shadow_dashes_left != 3
    {
        shadow_dashes_left = 3;
    }

// Trigger
    if input_action_pressed && state == STATE_JUMP && !ground
    {
        if shadow_dashes_left > 1
        {
                shadow_dashes_left -= 1;
                jump_lock = false;
                shadow_dash_timer = 20;
                state = STATE_SHADOW_DASH;
                aud_play_simple(player_homing);
                dummy_effect_create_ext(spr_shadow_disappear, 1, x, y, 1, 0, bm_normal, animation_direction, 1, c_white, 1)
                dummy_effect_create(spr_homing_effect, 0.5, x, y, 1, 0);
                obj_camera.cam_lag = 100;                
                shadow_dash_x_speed = 7 * animation_direction;
                shadow_dash_y_speed = 0;
                       
                if (input_left)
                {
                    shadow_dash_x_speed = -7;
                    shadow_dash_y_speed = 0;
                }
                
                if (input_right)
                {
                    shadow_dash_x_speed = 7;
                    shadow_dash_y_speed = 0;
                }
                
                if (input_down)
                {
                    shadow_dash_x_speed = 0;
                    shadow_dash_y_speed = 7;
                }
                
                if (input_up)
                {
                    shadow_dash_x_speed = 0;
                    shadow_dash_y_speed = -7;
                }
        }
        else
        {
            if shadow_dashes_left = 1
            {
                state = STATE_JUMP;
                x_speed = 7 * animation_direction;
                y_speed = -2.5;
                aud_play_simple(player_dash);
                dummy_effect_create(spr_red_circle_effect, 0.5, x, y, 1, 0);
                shadow_dashes_left --;
            }
        }
    }
    
// Dash
    if state == STATE_SHADOW_DASH
    {
    animation = "disappear";
    shadow_dash_timer -= 1;
    x_speed = shadow_dash_x_speed;
    y_speed = shadow_dash_y_speed;
    
    if shadow_dash_timer = -1
    {
    dummy_effect_create(spr_homing_effect, 0.5, x, y, 1, 0);
    visible = true;
    state = STATE_ROLL;
    x_speed = 0;
    y_speed = 0;
    }
    }

