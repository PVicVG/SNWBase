/// player_state_amy_double_jump()
// Amy Double Jump

  if (state == STATE_LOOKUP && (input_action_pressed or input_special_pressed))
  {
    state   = STATE_JUMP_DOUBLE;
    y_speed = -10;   
    ground  = false;
    animation = "double_jump";
    aud_play_sound(player_jump_double,global.sfx_volume,1,false,0);
  }
  
  if state = STATE_JUMP_DOUBLE && ground
  {
    state = STATE_ROLL;
  }
