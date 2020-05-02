/// player_handle_enemies()
 // Used to handle the enemy interaction.
 
 // Getting Hurt:
    if not (state == STATE_FLY && y_speed < 0)
    {
       if(state != STATE_JUMP && state != STATE_ROLL && state != STATE_SPINDASH && state != STATE_HURT && state != STATE_GLIDE && state != STATE_SLIDE)
       {
          if(invincibility == 0 /*&& instance_exists(obj_insta_shield) == false*/)
          {
             var enemy;
             enemy = player_collision_check(COL_MAIN_OBJECT, x, y, par_enemy, -1, -1);
          
             if(enemy != noone)
             {
                player_state_hurt(enemy, false);
             } 
          }        
       }
    }  
 
 // Hurting enemy:
    if(state == STATE_JUMP || state == STATE_ROLL || state == STATE_SPINDASH || state == STATE_FLY || state == STATE_GLIDE || state == STATE_SLIDE || invincibility == 2)
    {
       var enemy;
       enemy = player_collision_check(COL_MAIN_OBJECT, x, y, par_enemy, -1, -1);     
       if(enemy != noone)
       {  
          if((state == STATE_JUMP && y_speed >= 0) || (state == STATE_ROLL && y_speed > 0) || invincibility == 2 && y_speed > 0)
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
          else if((state == STATE_JUMP && y_speed <= 0) || (state == STATE_ROLL && y_speed <= 0) || state == STATE_SPINDASH || (state == STATE_FLY && y_speed < 0) || state == STATE_GLIDE || state == STATE_SLIDE || invincibility == 2 )
          {             
                  with(enemy)
                  {
                       instance_destroy();
                  }            
          }
       }
    }
 


