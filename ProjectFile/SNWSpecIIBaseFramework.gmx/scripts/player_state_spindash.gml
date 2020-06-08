/// player_state_spindash();
 // The players spindash state.

 // Trigger rolling if we're spindashing and no longer holding down:
    if(state == STATE_SPINDASH)
    {
       // Change to the rolling state and change the horizontal speed:
          if(!input_down && ground)
          {
             if((animation_direction == 1 && (!player_collision_check(COL_RIGHT, MASK_BIG, x, y, angle, -1) || player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, obj_monitor))) || (animation_direction == -1 && (!player_collision_check(COL_LEFT, MASK_BIG, x, y, angle, -1)) || player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, obj_monitor)) )
             {
                state              = STATE_ROLL;
                x_speed            = animation_direction*(8+(spindash_strength div 2));              
                obj_camera.cam_lag = 140;
                audio_stop_sound(player_spindash_charge);
                aud_play_sound(player_spindash_release, global.sfx_volume, 1, 0, 0);
                spindash_pitch     = 0;
                exit;       
             }else{
                state   = STATE_DEFAULT;
                x_speed = 0;
             }
          }  

       // Make sure there's no horizontal force:
          if(x_speed != 0)
          {
             x_speed = 0;
          }

       // Add strength to our spindash:
          if(input_action_pressed)
          {
             spindash_strength += 2;
             if(spindash_strength > 8)
             {
                spindash_strength = 8;
             }
             if(spindash_pitch < 11)
             {
                spindash_pitch +=1
             }
             else
             {
                spindash_pitch = 11;
             }
             aud_play_sound(player_spindash_charge, global.sfx_volume, 1+(spindash_pitch*0.075), 0, 0);
             
             // Change animation frame.
                animation_frame = animation_loop;
          }
          
       // Decrease strength.
          if(spindash_strength > 0)
          {
             spindash_strength *= 0.96875
          }
          if(spindash_strength < 0)
          {
             spindash_strength = 0;
          }
       
    }
 
 // Trigger Spindash:
    if(state == STATE_CROUCH && input_action_pressed && player_index != CHAR_EGGROBO)
    {
       // Change state and set values:
          state             = STATE_SPINDASH;
          spindash_strength = 0;       
          aud_play_sound(player_spindash_charge, global.sfx_volume, 1, 0, 0);
    }
 
 // Reset pitch.
    if(state != STATE_SPINDASH)
    {
       if(spindash_pitch > 0)
       {
          spindash_pitch = 0;
       }
    }

