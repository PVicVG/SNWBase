/// player_state_shield()
 // This is used for shield abilities.
 
  // Insta Shield
    if (shield == 0)
    {
        player_state_insta_shield();
    }
 
 // Exit if we don't have a shield.
    if(shield == noone)     exit;
    if(shield_obj == noone) exit;
    if(invincibility > 1)   exit;
      
 // Fire Dash:
    if(shield == SHIELD_FIRE)
    {
       if(shield_usable == true)
       {
          if(input_special_pressed)
          {
             x_speed            = animation_direction*8;
             y_speed            = 0;
             shield_obj         . image_xscale = animation_direction;
             shield_obj         . sprite_index = spr_shield_fire_dash;
             shield_state       = 1;
             shield_usable      = false;
             obj_camera.cam_lag = 140;
             aud_play_sound(shield_use_flame, global.sfx_volume, 1, 0, 0);
          }
       }
       if((shield_state == 1 && ground) || state == STATE_GRAB || state == STATE_SPRING)
       {
          shield_obj   . sprite_index = spr_shield_fire;
          shield_state = 0;
       }
       if(shield_obj.image_xscale != 1 && shield_state == 0)
       {
          shield_obj.image_xscale = 1;
       }
       if(((player_collision_check(COL_RIGHT, MASK_BIG, x, y, angle, -1)) || (player_collision_check(COL_LEFT, MASK_BIG, x, y, angle, -1))))
       {
          if(shield_state == 1)
          {
             shield_obj   . sprite_index = spr_shield_fire;
             shield_state = 0;          
          }
       }
       if(obj_camera.cam_lag < 50)
       {
          if(shield_state == 1)
          {
             shield_obj   . sprite_index = spr_shield_fire;
             shield_state = 0; 
          }
       }     
    }
    
 // Destroy fire shield underwater.
    if((shield == SHIELD_FIRE || shield == SHIELD_ELECTRICITY) && physic_mode == 1)
    {
       shield = 0;
       with(shield_obj)
       {
            instance_destroy();
       }
       shield_obj = noone;
    }
   
 // Bubble Bounce.
    if(shield == SHIELD_BUBBLE )
    {
       if(shield_usable == true)
       {
          if(input_special_pressed)
          {
             x_speed       = 0;
             y_speed       = 8;
             shield_state  = 1;
             shield_usable = false;
             shield_obj    . sprite_index = spr_shield_bubble_bounce;       
             state         = STATE_JUMP;  
             jump_lock     = false;    
          }
       }   
       if(shield_state == 1 && ground)
       {
          ground                 = false;
          state                  = STATE_JUMP;                   
          if(physic_mode == 0)
          {
             y_speed = -(dsin(angle_relative) * g_speed) - (dcos(angle_relative) * 7.5);
          }
          else
          {
             y_speed = -(dsin(angle_relative) * g_speed) - (dcos(angle_relative) * 7.5/2);          
          }
          
          // Different Types of Bounces depending on Key held
          if (input_special)
          {
          jump_completed         = true;   
          }
          else
          {
          jump_completed         = false;   
          }
          
          jump_lock              = false;   
          shield_state           = 2;
          shield_usable          = true;
          shield_obj.image_index = 0;
          aud_play_sound(shield_use_bubble, global.sfx_volume, 1, 0, 0); 
       }  
       if(shield_state > 0 && state == STATE_GRAB)
       {
          shield_state  = 0;
          shield_usable = true;
          shield_obj    . sprite_index = spr_shield_bubble;
       }  
    }
    
 // Electricity Jump.
    if(shield == SHIELD_ELECTRICITY )
    {
       if(shield_usable == true)
       {
          if(input_special_pressed)
          {
             jump_completed = true;
             y_speed        = -5.5;
             state = STATE_JUMP;
             shield_usable  = false;
             jump_lock      = false; 
             aud_play_sound(shield_use_electricity, global.sfx_volume, 1, 0, 0);
             for(i=0; i<4; i+=1)
             {
                 _spark = instance_create(floor(x-8), floor(y), obj_electricity_spark);
                 switch(i)
                 {
                        case 0: { _spark._direction = 0;   break; }
                        case 1: { _spark._direction = 180; break; }
                        case 2: { _spark._direction = 224; break; }
                        case 3: { _spark._direction = 315; break; }
                 }
             }
          }
       }
    }
    
  // Wind Shield:
    if(shield == SHIELD_WIND)
    {
        // Execute Shield Action
           if(state != STATE_GRAB && !ground)
           {
              if(input_special_pressed && shield_state = 0)
              {
                 jump_completed = true;
                 jump_lock = false;
                 y_speed            = min(-6, y_speed - 2);
                 state              = STATE_DEFAULT;
                 animation          = "walk";
                 shield_obj         . sprite_index = spr_shield_wind_dash;
                 shield_state       = 1;
                 shield_usable      = false;
                 obj_camera.cam_lag = 50;
                 aud_play_sound(shield_wind, global.sfx_volume, 1, 0, 0);
              }
           }
       
       // Low Gravity
           if (shield_state == 1)
           {
           
               if abs(x_speed) > 10
               {
               x_speed = 10 * sign(x_speed);
               }
               
               if (input_special)
               {
                    shield_obj.sprite_index = spr_shield_wind_dash;
                
                   if (y_speed > 2)
                   {
                     y_speed = choose(1, 2);
                   }
                   
                }
               else
               {
                    shield_obj.sprite_index = spr_shield_wind_empty;
               }
           }
                      
       // Remove Shield
           if(ground || state == STATE_GRAB)
           {
               if(shield_state == 1)
                  {
                      shield_obj   . sprite_index = spr_shield_wind;
                      shield_state = 0;
                  }
           }
   
    }

    
