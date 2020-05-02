/// player_handle_monitors(Side)
 // Handles the collision between monitors and the player.
 
 // Check if we collide with the top:
    if(argument0 == "top")
    {
       var monitor;
       monitor = player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, obj_monitor)
       if((monitor && y_speed >= 0) && (state == STATE_JUMP || state == STATE_ROLL || state == STATE_DEFAULT && animation = "roll" || shield_state == 1) && state != STATE_HURT)
       {
          // Destroy monitor:
             monitor.parent = obj_player;
             with(monitor)
             {
                  instance_destroy();
             }
          
          // Rebound:
             if(input_action)
             {
                y_speed       *= -1;
                ground         = false;
                jump_completed = false;
             }
             else
             {
                y_speed        = max(-4, y_speed*-1)
                ground         = false;
                jump_completed = false;
             }       
             
          // Reset bubble shield:
             if(shield == SHIELD_BUBBLE && shield_state > 0)
             {
                shield_state  = 0;
                shield_usable = true;
                shield_obj    . sprite_index = spr_shield_bubble;   
             }
       }
    }
    
 // Check if we collide with the side: 
    if(argument0 == "side")
    {
       var monitor;
       monitor = instance_nearest(x, y, obj_monitor);
       if(monitor != noone && (state == STATE_ROLL || shield_state == 1 || state == STATE_GLIDE || state == STATE_SLIDE) && (player_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, monitor) || player_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, monitor)))
       {
          // Destroy monitor:
             monitor.parent = obj_player;
             with(monitor)
             {
                  instance_destroy();
             }         
       }     
    }   

 // Check if we collide with the bottom: 
    var monitor;
    monitor = instance_nearest(x, y, obj_monitor);
    if(monitor != noone && (y_speed <= 0 && (state == STATE_JUMP || state == STATE_ROLL || animation = "roll")) && (player_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, monitor)))
    {  
       monitor.bumped  = true;
       monitor.y_speed = -2;
       angle           = 0;
       if(y_speed      < 0)
       {
          y_speed     *= -1;
       }
    }

 // Allow monitor to bounce on our head.
    var monitor;
    monitor = instance_nearest(x, y, obj_monitor);
    if(monitor != noone && (y_speed == 0 && (state != STATE_JUMP || state != STATE_ROLL || animation != "roll")))
    {
       if(state != STATE_CROUCH && state != STATE_SPINDASH)
       {
          if(player_collision_check(COL_TOP_OBJECT, MASK_MAIN, x, y, angle, monitor))
          {
             monitor.bumped  = true;
             monitor.y_speed = -2;
             angle           = 0;               
          }
       }
       else if(player_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y+10, angle, monitor))
       {
               if(state == STATE_SPINDASH)
               {
                 // Destroy monitor:
                    monitor.parent = obj_player;
                    with(monitor)
                    {
                        instance_destroy();
                    }                
               }
               else
               {
                  monitor.bumped  = true;
                  monitor.y_speed = -2;
                  angle           = 0;  
               }         
       }
    }

