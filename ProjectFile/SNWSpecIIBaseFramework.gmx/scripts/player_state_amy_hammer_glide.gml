/// player_state_amy_hammer_glide()
// Amy Hammer "Glide"

  if (state == STATE_HAMMER_GLIDE)
  {
    animation = "hammer spin";
  
    if hammer_glide_timer > 0
    {
      hammer_glide_timer -= 1;
    }    
    
    // Play Glide Sound
    if(audio_is_playing(player_flying) == false)
    {
      aud_play_sound(player_flying, global.sfx_volume, 1, 1, 1);
    }
    
    // Limit
    if y_speed > 3
    {
    y_speed -= 1;
    }
    
    if x_speed > 6
    {
    x_speed -= 1;
    }
    
    if x_speed < -6
    {
    x_speed += 1;
    }
    
    // Back to the roll state
    if (input_action == false || hammer_glide_timer <= 0 || ground)
    {
      state = STATE_JUMP;
      animation = "roll";
    }
  }
  else
  {
    if(audio_is_playing(player_flying) == true)
    {
      audio_stop_sound(player_flying);
    }
  }
  
  // Trigger Hammer Glide
  if ((state == STATE_JUMP || state == STATE_SPRING || animation == "roll") && !ground && input_action_pressed)
  {
    state = STATE_HAMMER_GLIDE;
    hammer_glide_timer = common_glide_timer;
  }
