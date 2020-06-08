 // Shield abilities:
    if (player_index != CHAR_MODERN && player_index != CHAR_EGGROBO)
    {
        player_state_shield();    
    }
 // Pingu
    if (player_index == CHAR_PINGU)
    {
        player_state_pingu()
    }
 
 // Sonic only - Dropdash:
    if(player_index == CHAR_SONIC)
    {
       player_state_dropdash();
    }

  // Fang only
    if (player_index == CHAR_FANG)
    {
        player_state_fang_bounce();
        player_state_shoot();
    }   
    
  // Eggrobo only  
    if (player_index == CHAR_EGGROBO)
    {
        player_state_eggrobo_shoot();
        player_state_eggrobo_flight()
        player_state_dash()
    } 
        
  // Modern Sonic Only
    if (player_index == CHAR_MODERN)
    {
        player_state_homing_attack();
        player_state_boost();
        player_state_stomp();
        player_state_lightspeed();
        player_state_kick()
    } 
    
  // Mighty
   if (player_index == CHAR_MIGHTY)
   {
        player_state_hammer_drop()
   }
   
   // Shadow
   if (player_index == CHAR_SHADOW)
   {
        player_state_shadow_dash()
   }
   
   // Amy
   if (player_index == CHAR_AMY)
   {
        player_state_hammer_punch()
        player_state_amy_double_jump()
        player_state_amy_hammer_glide()
   }
        
 // Tubes:   
    player_state_tubes();
    
 // Tails only - Flying:
    if(player_index == CHAR_TAILS)
    {
       player_state_fly();
    }
    
 // Knuckles only - Glide, Climb and Slide:
    if(player_index == CHAR_KNUCKLES)
    {
       player_state_glide();
       player_state_climb();
       player_state_slide();
    }
    

    
 // Hanging:
    player_state_grab();    
 
 // Collapsing tiles have to be handled differently to prevent that the Character gets stuck or gets pushed away.
 // This is why the following code exists here. Anywhere else, we'll just get stuck and won't be able to Jump.
    if(place_meeting(x, y + y_speed, par_collision_collapse_tiles)){
       while(!place_meeting(x, y + sign(y_speed), par_collision_collapse_tiles)){
              y += sign(y_speed);
       }
       ground = true;   
    }    

 // Jumping:
    player_state_jump();
           
 // Looking up:
    player_state_lookup();
    
 // Crouching:
    player_state_crouch();
    
 // Spindash:
    player_state_spindash();
    
 // Rolling:
    player_state_roll();
    
 // Skidding:
    player_state_skid();

 // Pushing:
    player_state_push();
    
 // Rails
    player_state_rails();
       
