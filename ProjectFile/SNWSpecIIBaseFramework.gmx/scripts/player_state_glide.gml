/// player_state_glide()
 // Script to handle Knuckles glide.
 
 // Stop gliding.
    if(input_action_released && state == STATE_GLIDE)
    {
       // Multiply horizontal speed by 0.25%
          x_speed = x_speed * 0.25;
          
       // Switch the state.
          state = STATE_GLIDE_DROP;
       
       // Set angle to 0.
          angle = 0;
          
       // Reset glide values.
          glide_turn_a = 0;
          glide_turn_s = 0;       
    }
    
 // Finish a drop.
    if(state == STATE_GLIDE_DROP && ground)
    {
       // Check angles in order to slide, otherwise, just switch the state to the default one.
          if((angle >= 0 && angle < 25) || (angle <= 360 && angle > 345))
          {
             // Set the x speed to 0.
                x_speed = 0;
                
             // Switch the animation to crouch.
                if(animation != "crouch")
                {
                   aud_play_sound(player_land, global.sfx_volume, 1, 0, 1);
                }
                animation = "crouch";
                
             // Decrease the glide crouch timer.
                if(glide_crouch_timer > 0)
                {
                   glide_crouch_timer -= 1;
                }
                else
                {
                   state              = STATE_DEFAULT;
                   glide_crouch_timer = 25;
                }
          }
          else
          {
             if(abs(x_speed) > 1)
             {
                state              = STATE_ROLL;
                glide_crouch_timer = 25; 
                aud_play_sound(player_roll, global.sfx_volume, 1, 0, 1);       
             }  
             else
             {
                state              = STATE_DEFAULT;
                glide_crouch_timer = 25;              
             }              
          }
    }
    if(state != STATE_GLIDE_DROP)
    {
       glide_crouch_timer = 25;
    }
 
 // Trigger glide.
    if(ground == false && (animation == "roll") && input_action_pressed)
    {
       // Reset angle and switch states.
          angle = 0;
          state = STATE_GLIDE;
          
       // Set the init. horizontal speed to 4.
          x_speed = animation_direction * 4;
          
       // Stop vertical force if it's below 0.
          if(y_speed < 0)
          {
             y_speed = 0;
          }
    }
    
 // Gravity while gliding.
    if(state = STATE_GLIDE)
    {
       jump_lock = false; 
       if(y_speed < 0.5) { y_speed += glide_gravity }  
       if(y_speed > 0.5) { y_speed -= glide_gravity }   
    }  
    
 // Glide turning, big chunk of code. (Credits to TBat)
    if(state == STATE_GLIDE && !ground)
    {
       //s8e_fail_check(state, STATE_GLIDE)
       
       if(glide_turn_s <= 0.0)
       {
          x_speed += 0.015625*animation_direction;
       }
       if(animation_direction == 1 && input_left && glide_turn_s == 0)
       {
          glide_turn_s = abs(x_speed);
          if(animation_direction == 1)
          {
             glide_turn_a = 0;
          }
          else
          {
             glide_turn_a = 180;
          }
       }
       else if(input_right && glide_turn_s != 0 && glide_turn_a < 180)
       {
               glide_turn_a = 360-glide_turn_a;
       }
       else if(animation_direction == -1 && input_right && glide_turn_s == 0)
       {
               glide_turn_s = abs(x_speed);
               if(animation_direction == 1)
               {
                  glide_turn_a = 0;
               }
               else
               {
                  glide_turn_a = 180;
               }
       }
       else if(input_left && glide_turn_s != 0 && glide_turn_a > 180)
       {
               glide_turn_a = 360-glide_turn_a;
       }
       if(glide_turn_s != 0)
       {
          glide_turn_a = floor(wrap_angle(glide_turn_a+3.8125));
          x_speed      = glide_turn_s*dcos(glide_turn_a);
          
          if(abs(dcos(glide_turn_a)) >= 1)
          {
             animation_frame = 0;
          }
          else if(abs(dcos(glide_turn_a)) >= 0.6 && abs(dcos(glide_turn_a)) < 1)
          {
                  animation_frame = 1;
          }
          else if(abs(dcos(glide_turn_a)) >= 0 && abs(dcos(glide_turn_a)) < 0.6)
          {
                  animation_frame = 2;
          }        
          
          
       // Change facing direction.
          if(glide_turn_a == 90)
          {
             animation_direction *= -1;
          }  
          else if(glide_turn_a == 270)
          {
                  animation_direction *= -1;
          }
          if(glide_turn_a == 0 || glide_turn_a == 180)
          {
             glide_turn_s    = 0;
             animation_frame = 0;
          }          
       }       
    }
    
 // Grab onto a wall.
    if(state == STATE_GLIDE)
    {
       if(((player_calculate_angle(x, y, angle) == 0) && x_speed >= 0 && player_collision_check(COL_RIGHT, MASK_BIG, x, y, 0, -1) && player_collision_check(COL_RIGHT, spr_player_mask_ledge_climb, x, y, 0, -1)) && !player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, obj_monitor) && !player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_spike) && !player_collision_check(COL_TOP, MASK_MAIN, x, y, 0, -1)) 
       ||(((player_calculate_angle(x, y, angle) == 0) && x_speed <= 0 && player_collision_check(COL_LEFT, MASK_BIG, x, y, 0, -1)  && player_collision_check(COL_LEFT, spr_player_mask_ledge_climb, x, y, 0, -1))  && !player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, obj_monitor) && !player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_spike) && !player_collision_check(COL_TOP, MASK_MAIN, x, y, 0, -1)) 
       {

          // Set Climb X position. 
             climb_ox = x;
             
          // Change state.
             state = STATE_CLIMB;
             
          // Reset keys.
             input_action          = false;
             input_action_pressed  = false;
             input_action_released = false;
          
          // Reset values.
             x_speed = 0;
             y_speed = 0;
             glide_turn_s = 0;
             glide_turn_a = 0;
             angle        = 0;
             
          // Play sound.
             aud_play_sound(player_hang, global.sfx_volume, 1, 0, 1);
       }
       else
       if(((player_calculate_angle(x, y, angle) <> 0) && x_speed >= 0 && player_collision_check(COL_RIGHT, MASK_BIG, x, y, 0, -1) && player_collision_check(COL_RIGHT, spr_player_mask_ledge_climb, x, y, 0, -1)) && !player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, obj_monitor) && !player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_spike) && !player_collision_check(COL_TOP, MASK_MAIN, x, y, 0, -1)) 
       ||(((player_calculate_angle(x, y, angle) <> 0) && x_speed <= 0 && player_collision_check(COL_LEFT, MASK_BIG, x, y, 0, -1)  && player_collision_check(COL_LEFT, spr_player_mask_ledge_climb, x, y, 0, -1))  && !player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, obj_monitor) && !player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_spike) && !player_collision_check(COL_TOP, MASK_MAIN, x, y, 0, -1)) 
       {
           state = STATE_ROLL;
           glide_turn_s = 0;
           glide_turn_a = 0;           
       }
    }
    
 // Slide.
    if(state == STATE_GLIDE && ground == true && angle == 0)
    {
       // Switch state.
          state = STATE_SLIDE;
          
       // Reset keys.
          input_action          = false;
          input_action_pressed  = false;
          input_action_released = false;
    }
    else if(state == STATE_GLIDE && ground == true && angle != 0)
    { 
            state = STATE_DEFAULT;
    }
    
 // Exit if the angle changes.
    if(state == STATE_GLIDE && angle != 0)
    {
       state = STATE_DEFAULT;
    }
    
 // Reset values.
    if(state != STATE_GLIDE)
    {
       glide_turn_s = 0;
       glide_turn_a = 0;
    }
