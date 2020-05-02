/// player_state_hurt(handle, is spike?)
 // Players state while hurt.
 
 // Exit in certain states:
    if(state == STATE_HURT)  exit;
    if(state == STATE_DEATH) exit;
    if(invincibility > 0)    exit;
    
    // Player only:
       if(player_type == IS_PLAYER)
       {       
       // In case we have rings, create a ring drop:
          if(global.player_rings > 0 || shield != 0)
          {
             // Switch state to hurt:
                state               = STATE_HURT;
                invincibility       = 1;
                invincibility_timer = -1;
                
             // Rebound:
                if(physic_mode == 0)
                {
                   y_speed = -4;
                }
                else
                {
                   y_speed = -2;                
                }
                x_speed = 2*sign(x-argument0.x)
                ground  = false;
            
             // Hurt sound:
                if(argument1 == false)
                {
                   aud_play_sound(player_hurt, global.sfx_volume, 1, 0, 0);
                }
                else
                {
                   aud_play_sound(player_hit_spike, global.sfx_volume, 1, 0, 0);
                }
             
             // Ring drop:
                if(shield == 0)
                {
                   player_ringtoss();
                }
                else
                {
                   shield = 0;
                   with(shield_obj)
                   {
                        instance_destroy();
                   }
                   shield_obj = noone;
                }
          }
          else
          {
             state = STATE_DEATH;
          }          
       }
       
    // AI only:
       if(player_type == IS_CPU)
       {       
       // In case we have rings, create a ring drop:
          if(ai_ring > 0 || shield != 0)
          {
             // Switch state to hurt:
                state               = STATE_HURT;
                invincibility       = 1;
                invincibility_timer = -1;
                
             // Rebound:
                if(physic_mode == 0)
                {
                   y_speed = -4;
                }
                else
                {
                   y_speed = -2;                
                }
                x_speed = 2*sign(x-argument0.x)
                ground  = false;
            
             // Hurt sound:
                if(argument1 == false)
                {
                   aud_play_sound(player_hurt, global.sfx_volume, 1, 0, 0);
                }
                else
                {
                   aud_play_sound(player_hit_spike, global.sfx_volume, 1, 0, 0);
                }
             
             // Ring drop:
                if(shield == 0)
                {
                   ai_ring = 0;
                }
                else
                {
                   shield = 0;
                   with(shield_obj)
                   {
                        instance_destroy();
                   }
                   shield_obj = noone;
                }
          }
          else
          {
             state = STATE_DEATH;
          }
       }
