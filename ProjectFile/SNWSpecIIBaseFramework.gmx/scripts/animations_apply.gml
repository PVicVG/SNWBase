///animations_apply()
 // Frame counts:
    if(player_index != CHAR_TAILS && player_index != CHAR_KNUCKLES)
    {
       switch (animation)
       {
          case   ("idle"):       { if(animation_frame_count < 288) {animation_frame_count += 1} break; }
          case   ("idle bored"): { animation_frame_count = 288; break; }
          case   ("skid"):       { animation_frame_count += 1;  break; }
          case   ("skid turn"):  { animation_frame_count += 1;  break; }
          default:               { animation_frame_count = 0;   break; } 
       }
    }
    else if(player_index == CHAR_TAILS || player_index == CHAR_KNUCKLES)
    {
            switch (animation)
            {
                case   ("idle"): 
                case   ("idle bored"):   { if(animation_frame_count < 360) {animation_frame_count += 1}; if((animation_frame_count mod 120) == 0) { animation = "idle bored" } break; }     
                case   ("idle bored 2"): { animation_frame_count = 360; break; }                
                case   ("skid"):         { animation_frame_count  += 1;   break; }
                case   ("skid turn"):    { animation_frame_count  += 1;   break; }
                case   ("slide"):        { animation_frame_count  += 1;   break; }                
                default:                 { animation_frame_count  = 0;    break; } 
       }    
    }

    // Default Animations
       if(state == STATE_DEFAULT)
       {              
          // Change from idle to ground if in mid air
              if (!ground && animation = "idle")
              {
              animation = "walk";
              }
               
         
       }  
       
 // Stop Skidding
    if ((animation == "skid" or animation == "skid turn") && x_speed = 0)
    {
        animation = "idle";
    }
        
 // Check states to apply animations:
    if(ground)
    {   
          // Default Animations
              if (state == STATE_DEFAULT)
              {         
                    // Idle
                     if(player_index != CHAR_TAILS && player_index != CHAR_KNUCKLES)
                     {
                        if(x_speed == 0 && animation_frame_count != 288 && animation != "idle")
                        {
                           animation = 'idle';
                        }else if(x_speed == 0 && animation_frame_count >= 288 && animation != "idle bored"){
                           animation = "idle bored";
                        }
                     }
                     if(player_index == CHAR_TAILS || player_index == CHAR_KNUCKLES)
                     {
                        if(x_speed == 0 && animation_frame_count != 360 && animation != "idle")
                        {
                           if(animation != "idle bored")
                           {
                              animation = 'idle';
                           }
                        }else if(x_speed == 0 && animation_frame_count >= 360 && animation != "idle bored 2"){
                           animation = "idle bored 2";
                        }
                     }           
                             
                  // Walking:
                     if(x_speed != 0 && abs(x_speed) < 5.50 && animation != "walk")
                     {
                        animation = "walk";
                     }
                     
                  // Run:
                     if(abs(x_speed) >= 5.50 && animation != "run")
                     {
                        animation = "run";
                     } 
            
            }
        
       // Looking up:
          if(state == STATE_LOOKUP && animation != "look up")
          {
             animation = "look up";
          }        
               
       // Crouch:
          if(state == STATE_CROUCH && animation != "crouch")
          {
             animation = "crouch";
          }
          
       // Spindash:
          if(state == STATE_SPINDASH && animation != "spindash")
          {
             animation = "spindash";
          }    
          
       // Rolling:
          if(state == STATE_ROLL && animation != "roll")
          {
             animation = "roll";
          }      
          
       // Push:
          if(state == STATE_PUSH && animation != "push")
          {
             animation = "push";
          }      
              
       // Slide:
          if(state == STATE_SLIDE && animation != "slide")
          {
             animation = "slide";
          }    
          
       // Bounce (Ground)
          if(state == STATE_FANG_BOUNCE && animation != "bounce_land")
          {
             animation = "bounce_land";
          }  
          
       // Stomp Land:
                  if(state == STATE_STOMP_LAND && animation != "stomp_land")
                  {
                     animation = "stomp_land";
                  }       
                                                     
    }
    if not(ground)
    {
           // Jumping:
                if (player_index != CHAR_FANG && player_index != CHAR_EGGROBO)
                {
                      if(state == STATE_JUMP && animation != "roll")
                      { 
                         animation = "roll";
                      }
                } 
                else
                {
                    // Fang Jumping
                        if (player_index == CHAR_FANG or player_index == CHAR_EGGROBO)
                        {
                            // Jumping
                                if (y_speed < 0)
                                {
                                    animation = "jump"
                                }
                                
                            // Falling
                                if (y_speed > 0)
                                {
                                    animation = "fall"
                                }
                        }
                }
                 
            // Rolling
               if(state == STATE_ROLL && animation != "roll")
                { 
                    animation = "roll";
                }
                
           // Dropdash.
              if(dropdash_flag == 2)
              {
                 animation = "dropdash"
              }
           
           // Bounce (Air)
              if(state == STATE_FANG_BOUNCE)
              {
                    // Bounce Jump
                        if (y_speed < 0 && animation != "bounce_jump")
                        {
                            animation = "bounce_jump";
                        }
                    
                    // Bounce Fall
                        if (y_speed > 0 && animation != "bounce_fall")
                        {
                            animation = "bounce_fall";
                        }
              }        
              
           // Spring:
              if(state == STATE_SPRING && y_speed < 0 && animation != "spring")
              { 
                 animation = "spring";
              }
              if(state == STATE_SPRING && y_speed > 0 && animation != "walk")
              { 
                 animation = "walk";
              }              
              if(state != STATE_SPRING && y_speed > 0 && animation == "spring")
              {
                 animation = "walk";              
              }
    
           // Hurt:
              if(state == STATE_HURT && animation != "hurt")
              {
                 animation = "hurt";
              }
    
           // Breath:
              if(state == STATE_BREATH && animation != "breath")
              {
                 animation = "breath";
              }  
    
           // Flying:
              if(state == STATE_FLY && physic_mode == 0 && animation != "fly")
              {
                 animation = "fly";
              }
              
           // Swimming:
              if(state == STATE_FLY && physic_mode == 1 && animation != "swim")
              {
                 animation = "swim";
              }                
    
           // Flying exhausted:
              if(state == STATE_FLYDROP && physic_mode == 0 && animation != "fly exhausted")
              {
                 animation = "fly exhausted";
              }
              
           // Swimming exhausted:
              if(state == STATE_FLYDROP && physic_mode == 1 && animation != "swim exhausted")
              {
                 animation = "swim exhausted";
              }  
              
           // Glide:
              if(state == STATE_GLIDE && animation != "glide")
              {
                 animation = "glide";
              } 
              
           // Glide drop:
              if(state == STATE_GLIDE_DROP && animation != "glide drop")
              {
                 animation = "glide drop";
              } 
              
           // Climb:
              if(state == STATE_CLIMB && is_ledge_grabbing == 0 && animation != "climb")
              {
                 animation = "climb";
              } 
              
           // Ledge climb:
              if(state == STATE_CLIMB && is_ledge_grabbing == 1 && animation != "ledge climb")
              {
                 animation = "ledge climb";
              }                                           
              
           // Slide:
              if(state == STATE_SLIDE && animation != "slide")
              {
                 animation = "slide";
              }   
              
            // Stomp
                  if(state == STATE_STOMP && animation != "stomp")
                  {
                     animation = "stomp";
                  }               
              
           // Stomp Land:
                  if(state == STATE_STOMP_LAND && animation != "stomp_land")
                  {
                     animation = "stomp_land";
                  }     
                  
            // Spike Deflect:
                  if(state == STATE_SPIKE_DEFEND && animation != "uncurl")
                  {
                     animation = "uncurl";
                  }                                         
                                                                                                                             
    }
              
    // Death:
       if(state == STATE_DEATH)
       {
          if(has_drowned == false)
          {
             animation = "death";
          }
          else
          {
             animation = "drown";
          }
       }             
    
 // ########################################################################################################################## //
 
 // Set animation directions:
 
    if(state != STATE_SPINDASH && state != STATE_LOOKUP && state != STATE_CROUCH
    && state != STATE_ROLL     && state != STATE_SKID   && state != STATE_JUMP
    && state != STATE_CLIMB    && state != STATE_HURT && grab_moving == 0)
    {
       // Change direction depending on input and speed:
          if(input_left  && x_speed <= 0) { animation_direction = -1}
          if(input_right && x_speed >= 0) { animation_direction =  1}
    }

 // Rolling direction:
    if(state == STATE_ROLL)
    {
       // Change direction depending on input and speed:    
          if(x_speed > 0 && ground)      { tails_tail_direction =  1 }
          if(x_speed < 0 && ground)      { tails_tail_direction = -1 }          
          if(x_speed > 0 && input_right) { animation_direction  =  1 }
          if(x_speed < 0 && input_left)  { animation_direction  = -1 }         
    }

 // Jumping direction:
    if(state == STATE_JUMP && !jump_lock || state == STATE_SPRING)
    {
      // Change direction depending on input:
         if(input_right) { animation_direction =  1 } 
         if(input_left)  { animation_direction = -1 }
         if(input_left && input_right)
         {
            animation_direction = animation_direction;
         }
    }

  // Change direction in the air:
     if(!ground && state = STATE_DEFAULT){
     
      // Change direction depending on input:
         if(input_right) { animation_direction =  1 }  
         if(input_left)  { animation_direction = -1 }       
                  
     }    
    
 // ########################################################################################################################## //
 
 // Modify animation speeds:
  
 // Walking:
    if(player_index != CHAR_TAILS && player_index != CHAR_KNUCKLES)
    {
       if(animation = "walk")
       {
          animation_speed = min(0.30, max(0.05+abs(x_speed)/25));
       }
    }
    if(player_index == CHAR_TAILS)
    {
       if(animation = "walk")
       {
          animation_speed = min(0.25, max(0.10+abs(x_speed)/25));
       }
    }    
    if(player_index == CHAR_KNUCKLES)
    {
       if(animation = "walk")
       {
          animation_speed = min(0.25, max(0.05+abs(x_speed)/25));
       }
    }
        
 // Running:
    if(animation = "run" && player_index != CHAR_SHADOW)
    {
       animation_speed = 0.20+abs(x_speed)/25;
    }    
 
 // Jumping:
    if(player_index != CHAR_TAILS)
    { 
       if(state == STATE_JUMP && dropdash_flag < 2)
       {
          animation_speed = animation_rendering_speed;
       }
    }
    if(player_index == CHAR_TAILS)
    { 
       if(state == STATE_JUMP)
       {
          animation_speed           = 0.25;
          animation_rendering_speed = 0.25;
       }
    }
    
    
  // Rolling:
    if(player_index != CHAR_TAILS)
    {   
       if(state = STATE_ROLL)
       {
          if(ground == true)
          {
             animation_speed           = 0.25+abs(x_speed)/12;
             animation_rendering_speed = animation_speed;
          }
          else
          {
             animation_speed = animation_rendering_speed;
          }
       }
    }
    
    if(player_index == CHAR_TAILS)
    {   
       if(state = STATE_ROLL)
       {
          animation_speed           = 0.25;
          animation_rendering_speed = 0.25;
       }
    }
        
  // Limit rolling animation speed:
     if(animation = "roll")
     {
        if(animation_rendering_speed > 1.5)
        {
           animation_rendering_speed = 1.5;
        }
        if(animation_speed > 1.5)
        {
           animation_speed = 1.5;
        }        
     }

  // If we hit a wall, reset the animation speed.
     if(!ground && y_speed >= 0 && ((player_collision_check(COL_RIGHT, MASK_BIG, x, y, angle, -1) && input_right) || (player_collision_check(COL_LEFT, MASK_BIG, x, y, angle, -1) && input_left)))
     {
        if(state == STATE_JUMP || state == STATE_ROLL)
        {
           animation_speed           = 0.25;
           animation_rendering_speed = 0.25;
        }
     }    
    
 // ########################################################################################################################## //    

