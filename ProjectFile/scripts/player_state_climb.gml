/// player_state_climb()
 // Script to handle Knuckles climb.
    
 // Only run if we're climbing.
    if(state == STATE_CLIMB)
    {
       // Keep our horizontal speed at 0.
          x_speed = 0;
          
       // If the x position doesn't match the position given in the variable climb_x, stop climbing. We do the same if there's no ground below us.
          if(x != climb_ox || ground == true || angle != 0)
          {
             if(ground)
             {
                state = STATE_DEFAULT;
             }
             else
             {
                state           = STATE_GLIDE_DROP;
                animation_frame = 1;
             }
             climb_ox = 0;
          }
          
       // If we're not grabbing onto anything, fall. 
          if(!player_collision_check(COL_RIGHT, MASK_BIG, x, y, angle, -1))
          &&(!player_collision_check(COL_LEFT, MASK_BIG, x, y, angle, -1))
          {
             if(!ground)
             {
                state           = STATE_GLIDE_DROP;
                animation_frame = 1;
             }
          }
       
       // If we're grabbing onto a ledge, climb up.
          if((animation_direction == 1 && y_speed <= 0) && !player_collision_check(COL_RIGHT, spr_player_mask_ledge_climb, x, y, angle, -1) && is_ledge_grabbing == 0)
          {
             y_speed           = 0;
             is_ledge_grabbing = 1;
             animation_frame   = 0;
             input_up          = false;
          } 
          if((animation_direction == -1 && y_speed <= 0) && !player_collision_check(COL_LEFT, spr_player_mask_ledge_climb, x, y, angle, -1) && is_ledge_grabbing == 0)
          {
             y_speed           = 0;
             is_ledge_grabbing = 1;
             animation_frame   = 0;
             input_up          = false;
          }         
          if(is_ledge_grabbing == 1)
          {
             if(floor(animation_frame) > 2)
             {
                if(animation_direction == 1)
                {  
                   state             = STATE_DEFAULT;
                   input_up          = false;
                   is_ledge_grabbing = 0;
                   y                -= 22;
                   x                += 24;
                }
                else
                if(animation_direction == -1)
                {  
                   state             = STATE_DEFAULT;
                   input_up          = false;
                   is_ledge_grabbing = 0;
                   y                -= 22;
                   x                -= 24;
                }                
             }
          }  
       
       // When pressing up or down, climb and animate.
          if(is_ledge_grabbing == 0)
          {
             if(input_up && !player_collision_check(COL_TOP, MASK_MAIN, x, y, angle, -1))
             {
                y_speed = -climb_speed;
                if(climb_frame_timer > 0)
                {
                   climb_frame_timer -= 1;
                }
                else
                {
                   climb_frame_timer = 6;
                   if(animation_frame != 5)
                   {
                      animation_frame += 1;
                   }
                   else
                   {
                      animation_frame  = 0;
                   }
                }                
             }
             else if(input_up && player_collision_check(COL_TOP, MASK_MAIN, x, y, angle, -1))
             {
                     if(y_speed < 0)
                     { 
                        y_speed = 0;
                     }
             }             
             if(input_down && !player_collision_check(COL_BOTTOM, MASK_MAIN, x, y, angle, -1))
             {
                y_speed = climb_speed;
                if(climb_frame_timer > 0)
                {
                   climb_frame_timer -= 1;
                }
                else
                {
                   climb_frame_timer = 6;
                   if(animation_frame != 0)
                   {
                      animation_frame -= 1;
                   }
                   else
                   {
                      animation_frame  = 5;
                   }
                }                
             }       
             
             // Stop movement.
                if(!input_up && !input_down)
                {
                   y_speed = 0;
                }
          }
          
       // Jump off wall.
          if(input_action_pressed)
          {
             if(state == STATE_CLIMB && is_ledge_grabbing == 0)
             {
                state = STATE_JUMP;
                if(physic_mode == 0)
                {
                   x_speed = animation_direction*-4;
                   y_speed = -4;
                }
                else
                {
                   x_speed = animation_direction*-2;
                   y_speed = -2;
                }
                animation_direction = -animation_direction;
                aud_play_sound(player_jump, global.sfx_volume, 1, 0, 1);
             }
          }        
    }
    



