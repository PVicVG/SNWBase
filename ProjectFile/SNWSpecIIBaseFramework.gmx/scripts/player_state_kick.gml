if input_specialB_pressed && (state == STATE_DEFAULT && ground)
{
    state = STATE_KICK;
    animation_frame = 0;
    kick_timer = 30;
    dummy_effect_create(spr_homing_effect, 0.5, x, y, 1, 0);
    aud_play_simple(player_sweep_kick);
}

if state = STATE_KICK
{
    animation = "ground kick"

    kick_timer -= 1;
    
    if kick_timer == -1
    {
        if !ground
        {
            state = STATE_JUMP;
        }
        else
        {
            state = STATE_DEFAULT;
        }
    }
}
