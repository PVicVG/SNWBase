///player_state_shoot()

    // Shoot
        if (state == STATE_DEFAULT && abs(x_speed < 3) && ground && input_special_pressed)
        {
            state = STATE_SHOOT;
            animation = "shoot";
            x_speed = 0;
            aud_play_simple(player_shoot);
            instance_create(x + (16 * animation_direction), y - 6, obj_player_bullet)
        }
        
    // Stop Shooting
        if state == STATE_SHOOT
        {
            if animation = "shoot" && animation_frame >= 5
            {
                state = STATE_DEFAULT;
            }
        }
