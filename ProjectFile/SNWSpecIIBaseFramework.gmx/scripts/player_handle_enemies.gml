/// player_handle_enemies()
 // Used to handle the enemy interaction.
 
 // Getting Hurt:
       if(!harmful)
       {
          if(invincibility == 0 && instance_exists(obj_insta_shield) == false)
          {
             var enemy;
             enemy = player_collision_check(COL_MAIN_OBJECT, x, y, par_enemy, -1, -1);
          
             if(enemy != noone)
             {
                player_state_hurt(enemy, false);
             } 
          }        
       } 
 
 // Hurting enemy:
    if (harmful)
    {
       var enemy;
       enemy = player_collision_check(COL_MAIN_OBJECT, x, y, par_enemy, -1, -1);     
       if(enemy != noone)
       {  
                  
          if (y_speed > 0 or state == STATE_FANG_BOUNCE) && (state != STATE_HOMING && state != STATE_HAMMER_DROP)
          {
              with(enemy)
              {
                   instance_destroy();
              }
              if(input_action)
              {
                 y_speed       *= -1;
                 ground         = false;
                 jump_completed = false;             
              }
              else
              {
                 y_speed        = max(-4, y_speed*-1);
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
          else
          {             
                  with(enemy)
                  {
                       instance_destroy();
                  }            
          }
          
            // Stop Homing
            boost_amount += 35;
            player_homing_bounce()
            player_stop_homing()
            
            
       }
    }
 


