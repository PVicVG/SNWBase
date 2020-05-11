/// player_state_grab()
 // Used when grabing on objects.
 
    if(state == STATE_GRAB)
    {
       // Animation & Movement:
          if(grab_type == GRAB_STATIC)
          {
             x_speed   = 0;
             animation = "grab"
          }
          if(grab_type == GRAB_POLE)
          {
              if((input_right) && place_meeting(x+sprite_width/2, y, par_grab))
              {
                 x         += 0.5;
                 animation = "grab shimmy";
             }
             else if((input_left)  && place_meeting(x-sprite_width/2, y, par_grab))
             {
                     x         -= 0.5;
                     animation = "grab shimmy";
             }
             else
             {
                animation       = "grab shimmy";
                animation_frame = 0;
             }
          }
          if(grab_type == GRAB_DISTANCE)
          {
             if(grab_moving == 0)
             {
                if(input_right/*_pressed*/ && place_meeting(x+grab_distance, y, par_grab))
                {
                   with(par_grab)
                   {
                        if(place_meeting(x-other.grab_distance, y, other))
                        {
                           if(type == GRAB_DISTANCE)
                           {
                              other.grab_moving = 1;
                           }
                        }
                   }
                }
                if(input_left/*_pressed*/ && place_meeting(x-grab_distance, y, par_grab))
                {
                   with(par_grab)
                   {
                        if(place_meeting(x+other.grab_distance, y, other))
                        {
                           if(type == GRAB_DISTANCE)
                           {
                              other.grab_moving = -1;
                           }
                        }
                   }                
                }                
             }
             else
             {
               if(x < grab_x+grab_distance && grab_moving == 1)
               {  
                  animation_direction = 1;
                  animation           = "grab move"
                  x += 1.2;
               }
               else if(x > grab_x-grab_distance && grab_moving == -1)
               {  
                  animation_direction = -1;
                  animation           = "grab move"
                  x -= 1.2;
               } 
               else
               {
                  grab_moving = 0;
                  grab_x      = x;
                  if(!place_meeting(x+grab_distance, y, par_grab) || !place_meeting(x-grab_distance, y, par_grab))
                  {
                     animation = "grab";  
                  }
                  if(!input_left && !input_right)
                  {
                     animation = "grab";
                  }
                  with(par_grab)
                  {
                       if(place_meeting(x, y, other))
                       {
                          other.x = x;
                       }
                  }
               }             
             }
          }
                        
       // Disable vertical speed.
          y_speed   = 0;       

       // Fix y position:       
          if(grab_y != 0)
          {
             y = grab_y;
          }
       
       // Jump:
          if(input_action_pressed)
          {
            // Jump Flags.
             state          = STATE_JUMP;
             jump_completed = false;
             
             // Different Means of Leaving Hang
             if !input_down {
                // Jump from Hang
                    grab_timer     = 0;
                    y_speed        = jump_strength;
             }
             else
             {
                // Fall from Hang
                     grab_timer     = 1;
                     y_speed        = 0;
             }            
             
             // Allow player to use shields and plays the sound
             shield_usable  = true;
             aud_play_sound(player_jump, global.sfx_volume, 1, 0, 0);             
          }
    }
    
 // Reduce grab timer.
    if(grab_timer)
    {
       grab_timer -= 1;
    }
    
 // Make sure moving variable is being set to false.
    if(state != STATE_GRAB)
    {
       grab_moving = 0; 
    }
 
