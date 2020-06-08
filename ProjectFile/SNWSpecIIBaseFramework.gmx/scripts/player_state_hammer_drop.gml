/// player_state_hammer_drop() 
 if (state == STATE_SPIKE_DEFEND && ground)
 {
    state = STATE_DEFAULT;
 }

  if (state == STATE_HAMMER_DROP)
  {
  
    animation = "hammer drop";
    scr_afterimage(sprite, animation_frame, floor(x), floor(y), animation_direction, 1, animation_angle, c_white, 0.5, 1)
    
    if y_speed < 0
    state = STATE_JUMP
    
    if (ground)
    {    
      // Destroy Near Enemys
      if distance_to_object(par_enemy) < 90
      {
        with (instance_nearest(x,y,par_enemy))
        instance_destroy();
      }
      
        with (obj_monitor)
        {
            if (inview())
            {
            collision.x = -1;
            collision.y = -1; 
            bumped = true;
            y_speed = -3.6;
            }
        }
      
      aud_play_sound(player_hammer_drop_land,global.sfx_volume,1,false,0);
      
      if (angle_relative > 15 && angle_relative < 340)
      {
        ground = true;
        state = STATE_DEFAULT;
      }
      else
      {
        ground = false;
        y_speed = -3;
        state = STATE_JUMP;
        
        // Shake Camera
        scr_cam_shake()
        
        create_hammer_drop_dust();
      }
      
    }
  }
  
  // Do Hammer Drop
  if (state == STATE_JUMP && input_action_pressed)
  {
    state = STATE_HAMMER_DROP;
    y_speed = 15;
    obj_camera.cam_lag = 70;
    if (abs(x_speed) >= 2)
    {
      x_speed = 2 * animation_direction;
    }
    aud_play_sound(player_hammer_drop_start,global.sfx_volume,1,false,0);
  }
