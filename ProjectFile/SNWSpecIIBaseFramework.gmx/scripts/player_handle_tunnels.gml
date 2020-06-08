/// player_handle_tunnels()
 // Used to go through tunnels.
 
    // Set state and speed.
       if(ground && tunnel_lock = 1)
       {
          if(x_speed != 0)
          {
             state  = STATE_ROLL;
          }
          else
          {
             state  = STATE_ROLL;          
             x_speed  = 4; 
          }
       }
       
    // Trigger the Tunnel Lock:
       if(ground)
       {
          if(player_collision_check(COL_MAIN_OBJECT, x, y, obj_sensor_lock_tunnel_right, -1, -1) && x_speed > 0.0)
          {
             if(tunnel_lock == 0)
             {
                tunnel_lock  = 1;
                if(state != STATE_ROLL)
                {
                   aud_play_sound(player_roll, global.sfx_volume, 1, 0, 0);
                }
                if(x_speed == 0) { x_speed = 4 }
             }
          }
          else
          if(player_collision_check(COL_MAIN_OBJECT, x, y, obj_sensor_lock_tunnel_left, -1, -1) && x_speed < 0.0)
          {
             if(tunnel_lock == 0)
             {
                tunnel_lock  = 1;
                if(state != STATE_ROLL)
                {
                  aud_play_sound(player_roll, global.sfx_volume, 1, 0, 0);
                }
                if(x_speed == 0) { x_speed = -4 }
             }
          }          
       }
       
    // Disable the Tunnel Lock:
       if(tunnel_lock = 1)
       {
          if(player_collision_check(COL_MAIN_OBJECT, x, y, obj_sensor_lock_tunnel_right, -1, -1) && x_speed < 0.0)
          {
             tunnel_lock = 0;
             state     = STATE_ROLL;
          }
          else
          if(player_collision_check(COL_MAIN_OBJECT, x, y, obj_sensor_lock_tunnel_left, -1, -1) && x_speed > 0.0)
          {
             tunnel_lock = 0;
             state     = STATE_ROLL;
          }          
       }
 


