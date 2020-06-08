/// player_handle_grabs()
 // Used for Grab/grab. objects.
 
 // Check if jumping:
    if(grab_timer == 0 && (state == STATE_DEFAULT || state == STATE_JUMP || state == STATE_SPRING || state == STATE_FLY || state == STATE_GLIDE) && (y_speed > 0))
    {
       // Check if colliding with grab object.
          if(collision_rectangle(x-4, y-2, x+4, y+2, par_grab, false, true))
          {
             // Change variables.
                x_speed    = 0;
                y_speed    = 0;
                state      = STATE_GRAB;            
                animation  = "grab";
                aud_play_sound(player_hang, global.sfx_volume, 1, 0, 0);
                with(par_grab)
                {
                     if(place_meeting(x, y, other))
                     {
                        other.grab_y        = bbox_top+bbox;
                        other.grab_id       = id;
                        other.grab_type     = type;  
                        other.grab_distance = distance;
                        other.grab_x        = x;
                        
                        if (type = GRAB_POLE)
                        { 
                           if(left == true)
                           {
                              if(other.x < x)
                              {
                                 other.x = bbox_left+5;
                              }
                           } 
                           if(right == true)
                           {
                              if(other.x > x)
                              {
                                 other.x = bbox_right-5;
                              }
                           }      
                           if(middle == true)
                           {
                              if(other.x > x+4)
                              {
                                 other.x = bbox_right-5;
                              }
                              if(other.x < x-4)
                              {
                                 other.x = bbox_left+5
                              }
                           }                                                         
                        }
                        else
                        {
                           other.x = x;
                        }
                        
                        if (type == GRAB_MOVING)
                        {
                            other.grab_x += x_speed;
                            other.grab_y += y_speed;
                            other.x += x_speed;
                            other.y += y_speed;
                        }
                     }
                }
          }
    }

