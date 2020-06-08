/// player_state_stomp()

  if (state == STATE_STOMP_LAND)
  {
    if (animation == "stomp_land")
    {
      if (animation_flags_finished == true || x_speed != 0 || animation_frame >= 4)
      {
          state = STATE_DEFAULT;
          animation = "idle"
      }
    }
  }
  
  if (state == STATE_STOMP)
  {
    if ground
    {
      aud_play_sound(player_stomp_land,global.sfx_volume,1,false,1);
      dummy_effect_create(spr_stomp_dust, 0.2, x, y, -2, 0)
      state = STATE_STOMP_LAND;
    }
  }
  else
  {
    audio_stop_sound(player_stomp_start);
  }
  
  if (state == STATE_SPRING || state == STATE_JUMP || state == STATE_DEFAULT) && ground == false && input_specialB_pressed
  {
    x_speed = 0;
    y_speed = 9;
    state = STATE_STOMP;
    aud_play_sound(player_stomp_start,global.sfx_volume,1,false,1);
  }
