/// player_set_harmfullness()
/// Can the player hurt stuff?
    if ((state == STATE_JUMP && player_index != CHAR_FANG && player_index != CHAR_EGGROBO) || state == STATE_ROLL ||
        state == STATE_SPINDASH || state == STATE_HAMMER_DROP || state == STATE_GLIDE || 
        state == STATE_SLIDE || state == STATE_FANG_BOUNCE || invincibility == 2 ||
        state == STATE_KICK || state == STATE_HOMING || boosting || state == STATE_DASH ||
        state == STATE_STOMP || state == STATE_SHADOW_DASH || animation = "double_jump" ||
        state = STATE_HAMMER_PUNCH || state = STATE_HAMMER_GLIDE)
    {
        harmful = true;
    }
    else
    {
        harmful = false;
    }
