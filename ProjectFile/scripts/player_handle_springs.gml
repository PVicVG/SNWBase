/// player_handle_springs()
 // Used to handle various springs.
 
 // Find nearest spring.
    spring = instance_nth_nearest(x, y, par_spring, 1);
    
 // Check if we collide with spring:
    if(spring != noone)
    {
       // Diagonal springs:
          if(spring.spring_direction == 'left')
          {
             if(!player_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, spring) && player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, spring))
             {
                 // Set spring frame:
                    spring.spring_frame = 1;
                    
                 // Reset angle:
                    player_angle(0);
                    
                 // Set input lock and speed.
                    input_lock_s        = 1;
                    lock_timer          = 16;
                    x_speed             = -spring.spring_strength;
                    animation_direction = -1;
                    
                 // Play spring sound:
                    aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
             }
          }
          if(spring.spring_direction == 'right')
          {
             if(!player_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, spring) && player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, spring))
             {
                 // Set spring frame:
                    spring.spring_frame = 1;
                    
                 // Reset angle:
                    player_angle(0);
                    
                 // Set input lock and speed.
                    input_lock_s        = 1;
                    lock_timer          = 16;
                    x_speed             = spring.spring_strength;
                    animation_direction = 1;
                    
                 // Play spring sound:
                    aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
             }
          } 
          
       // Vertical springs:
          if(spring.spring_direction == 'up')
          {
             if(player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, spring) && y_speed >= 0)
             {
                 // Set spring frame:
                    spring.spring_frame = 1;
                    
                 // Disable ground flag and change state.
                    ground = false;
                    state  = STATE_SPRING;

                 // Set speed.
                    y_speed = -spring.spring_strength;
                                      
                 // Play spring sound:
                    aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
                    
                 // Reset bubble shield:
                    if(shield == SHIELD_BUBBLE && shield_state > 0)
                    {
                       shield_state  = 0;
                       shield_usable = true;
                       shield_obj    . sprite_index = spr_shield_bubble;   
                    }  
             }
          }
          if(spring.spring_direction == 'down')
          {
             if(ground && (player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, spring)) && angle != 0)
             {
                 // Set spring frame:
                    spring.spring_frame = 1;

                 // Set speed.
                    x_speed = spring.spring_strength;
                    lock_timer = 15;               
                                      
                 // Play spring sound:
                    aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
             }
             else
             if(player_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, spring))
             {
                 // Set spring frame:
                    spring.spring_frame = 1;

                 // Set speed.
                    y_speed = spring.spring_strength;                    
                                      
                 // Play spring sound:
                    aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
             }
          }                  
    }
    
 // Find nearest diagonal spring.
    spring_diagonal = instance_nth_nearest(x, y, par_spring_diagonal, 1);

 // Check if we collide with a spring.       
    if (spring_diagonal != noone)
    {   
          // Diagonal Up Right:
             if(spring_diagonal.spring_direction == 'up right')
             {        
                // Check if we collide with it:
                   if((player_collision_check(COL_BOTTOM_OBJECT, MASK_LARGE, x, y, angle, spring_diagonal) && y_speed >= 0) or (player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, spring_diagonal) && x_speed <= 0))
                   {                       
                   
                      // Trigger spring alarm.
                         spring_diagonal.alarm[0] = 5; 
                         
                      // Reset angle and disable ground flag.                          
                         player_angle(0);
                         ground = false;
                      
                      // Set speed and state.
                         x_speed             =  spring_diagonal.spring_strength;
                         y_speed             = -spring_diagonal.spring_strength;
                         animation_direction = 1;
                         state               = STATE_SPRING;
                      
                      // Play spring sound:
                         aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
                   }                                                                                           
             }
             
          // Diagonal Up left:
             if(spring_diagonal.spring_direction == 'up left')
             {        
                // Check if we collide with it:
                   if((player_collision_check(COL_BOTTOM_OBJECT, MASK_LARGE, x, y, angle, spring_diagonal) && y_speed >= 0) or (player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, spring_diagonal) && x_speed <= 0))
                   {                       
                   
                      // Trigger spring alarm.
                         spring_diagonal.alarm[0] = 5; 
                         
                      // Reset angle and disable ground flag.                          
                         player_angle(0);
                         ground = false;
                      
                      // Set speed and state.
                         x_speed             = -spring_diagonal.spring_strength;
                         y_speed             = -spring_diagonal.spring_strength;
                         animation_direction = -1;
                         state               = STATE_SPRING;
                      
                      // Play spring sound:
                         aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
                   }                                                                                           
             }
             
          // Diagonal Down Right:
             if(spring_diagonal.spring_direction == 'down right')
             {        
                // Check if we collide with it:
                   if((player_collision_check(COL_TOP_OBJECT, MASK_LARGE, x, y, angle, spring_diagonal) && y_speed >= 0) or (player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, spring_diagonal) && x_speed <= 0))
                   {                       
                   
                      // Trigger spring alarm.
                         spring_diagonal.alarm[0] = 5; 
                         
                      // Reset angle and disable ground flag.                          
                         player_angle(0);
                         ground = false;
                      
                      // Set speed and state.
                         x_speed             = spring_diagonal.spring_strength;
                         y_speed             = spring_diagonal.spring_strength;
                         animation_direction = 1;
                         state               = STATE_SPRING;
                      
                      // Play spring sound:
                         aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
                   }                                                                                           
             }   
             
          // Diagonal Down left:
             if(spring_diagonal.spring_direction == 'down left')
             {        
                // Check if we collide with it:
                   if((player_collision_check(COL_TOP_OBJECT, MASK_LARGE, x, y, angle, spring_diagonal) && y_speed >= 0) or (player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, spring_diagonal) && x_speed <= 0))
                   {                       
                   
                      // Trigger spring alarm.
                         spring_diagonal.alarm[0] = 5; 
                         
                      // Reset angle and disable ground flag.                          
                         player_angle(0);
                         ground = false;
                      
                      // Set speed and state.
                         x_speed             = -spring_diagonal.spring_strength;
                         y_speed             = spring_diagonal.spring_strength;
                         animation_direction = -1;
                         state               = STATE_SPRING;
                                               
                      // Play spring sound:
                         aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
                   }                                                                                           
             }                                               
    } 

