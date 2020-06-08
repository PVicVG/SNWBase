if input_special_pressed && (state == STATE_DEFAULT or state == STATE_LOOKUP) && ground && x_speed < 5 && (not (angle > 45 && angle < 310))
{
    state = STATE_HAMMER_PUNCH;
    animation_frame = 0;
    kick_timer = 18;
    aud_play_simple(player_sweep_kick);
}

if state = STATE_HAMMER_PUNCH
{
    animation = "hammer punch"

    kick_timer -= 1;
    
    if kick_timer == -1
    {
    
        aud_play_simple(general_bump)
        if !ground
        {
            state = STATE_JUMP;
        }
        else
        {
            state = STATE_DEFAULT;
            
            if input_up
            {
                state   = STATE_JUMP_DOUBLE;
                y_speed = -8;   
                ground  = false;
                animation = "double_jump";
                aud_play_sound(player_jump_double,global.sfx_volume,1,false,0);
            }
        }
    }
}
