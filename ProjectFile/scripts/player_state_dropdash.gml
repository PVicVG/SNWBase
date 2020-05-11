/// player_state_dropdash() 
 // Sonics dropdash ability.
 
    // Cancel dropdash.
        if(!input_action && !ground && dropdash_flag >= 1) or ((animation != "roll" && animation != "dropdash") && dropdash_flag == 1) 
        {         
            dropdash_flag  = 0;
            dropdash_speed = 0;
            dropdash_timer = 20;
            audio_stop_sound(player_dropdash);
        }
 
 // Trigger dropdash.
    if((animation == "roll" || animation == "dropdash") && !ground)
    {      
       // Trigger Dropdash.
          if(input_action_pressed && dropdash_flag == 0)
          {
             dropdash_flag = 1;
          }
          if(input_action && dropdash_flag == 1)
          {
             if(dropdash_timer > 0)
             {
                dropdash_timer -= 1;
             }
             else
             {
                dropdash_flag = 2;
                aud_play_sound(player_dropdash, global.sfx_volume, 1, 0, 0);
             }
          }
       
    }
    
 // Set speed.
    if(ground && dropdash_flag == 2)
    {
       dropdash_flag  = 0;
       dropdash_timer = 20;
       dropdash_speed = abs(x_speed)/2 + 8;
       state          = STATE_ROLL;
       aud_play_sound(player_spindash_release, global.sfx_volume, 1, 0, 0);
       aud_play_sound(player_roll, global.sfx_volume, 1, 0, 0);
       audio_stop_sound(player_dropdash);
       if(dropdash_speed > 12)
       {
          dropdash_speed = 12;
       }
       if(!input_right && !input_left)
       {
          x_speed = animation_direction*dropdash_speed;
       }
       if(input_right)
       {
          x_speed =  dropdash_speed;
       }
       if(input_left)
       {
          x_speed = -dropdash_speed;
       }
       
       // Camera Lag
        obj_camera.cam_lag = 140;
       
       // Create Dropdash Effects
        dummy_effect_create_ext(spr_dropdash_dust_big, 0.5, x, bbox_bottom, 5, 0, bm_normal, sign(x_speed), 1, c_white, 1);

    }
    
 // Cancel.
    if((ground && dropdash_timer < 20))
    {
       dropdash_flag  = 0;
       dropdash_speed = 0;
       dropdash_timer = 20;
       audio_stop_sound(player_dropdash);
    }
