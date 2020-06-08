 // Exit if not initialized or death.
    if(initialized = false || state = STATE_DEATH) exit;

 // Set temporal sample variables:
    var _steps, _samples;
    
 // Limit the horizontal speed:
    if(x_limit)
    {
       x_speed = clamp(x_speed, -xspeed_max, x_speed_max);
    }
    
 // Set steps/samples:
    _steps = 1;
    if(x_sample > 0)
    {
       _steps += floor(abs(x_speed)/x_sample);  
    }
    _samples = x_speed/_steps;
     
 // Should It do Collision Checking?
 var _collision_checking;
 _collision_checking = true;
 
 if player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, par_ride) or instance_place(x, bbox_bottom + 1, par_ride)
 {
    _collision_checking = false;
 }
    
 // Move horizontally:
    repeat(_steps)
    {
           x += dcos(angle)*_samples;
           y -= dsin(angle)*_samples;
           
           // Move outside terrain if stuck:
           if (_collision_checking)
           {
              while(_samples > 0 && (player_collision_check(COL_RIGHT, MASK_MID, x, y, angle, -1) == true))
              {
                    x -= dcos(angle);
                    y += dsin(angle);                  
              }
              while(_samples < 0 && (player_collision_check(COL_LEFT, MASK_MID, x, y, angle, -1) == true))
              {
                    x += dcos(angle);                   
                    y -= dsin(angle);
              }
           } 
        
           // Object handling:
                         
           // Handling:
              player_handle_layers();
              player_handle_springs();
              player_handle_watersurface();
              player_handle_tunnels();
              player_handle_platforms();
              player_handle_breakable_walls();
              player_handle_casino()
              player_handle_charged_springs()
              player_handle_conveyors();
                    
           // Terrain/Slope movement:                         
              if(ground) && (_collision_checking)
              {
                 while(player_collision_check(COL_MAIN, x, y, -1, -1, -1))
                 {
                       x -= dsin(angle);
                       y -= dcos(angle);
                 }
                 if(player_collision_check(COL_SLOPE, MASK_MID, x, y, angle, -1))
                 {
                    while (!player_collision_check(COL_MAIN, x, y, -1, -1, -1))
                    {
                              x += dsin(angle);
                              y += dcos(angle); 
                    }
                 }
              
              // Get new angles:
                 if(y_allow)
                 {
                    if(player_collision_check(COL_LEFT_EDGE, x, y, angle, -1, -1) && player_collision_check(COL_RIGHT_EDGE, x, y, angle, -1, -1))
                    {
                       angle = player_calculate_angle(x, y, angle);
                    }
                 }
              }   
        
           // Object handling:
              player_handle_rings();
              player_handle_obstacles();
              player_handle_monitors("side");
              player_handle_breakable_walls();
              player_handle_corkscrews();
              player_handle_enemies();
              player_handle_spikes();
              player_handle_tunnels();
              player_handle_slipping();
              
           // Abort.
              if(x_speed == 0)
              {
                 break;
              }                  
    }
    
 // Move vertically:
    if(y_allow)
    {
    
       // Limit vertical speeds:
          if(y_limit)
          {
             y_speed = clamp(y_speed, -y_speed_max, y_speed_max);
          }
          
       // Set steps/samples:
          if(!ground)
          {
                 var _ysteps, _ysamples;
                 _ysteps = 1;
                 if(x_sample > 0)
                 {
                    _ysteps += floor(abs(y_speed)/y_sample);
                 }
                 
                 _ysamples = y_speed/_ysteps;
                 
                 repeat(_ysteps)
                 {                   
                        x += dsin(angle)*_ysamples;
                        y += dcos(angle)*_ysamples;
           
                        // Move outside terrain if stuck:
                        if (_collision_checking)
                        {
                           while(_ysamples < 0 && (player_collision_check(COL_TOP, MASK_MID, x, y, 0, -1) == true))
                           {
                                 x += dsin(angle);                                 
                                 y += dcos(angle);
                           }
                           while(_ysamples > 0 && (player_collision_check(COL_BOTTOM, MASK_MID, x, y, 0, -1) == true))
                           {
                                 x -= dsin(angle);                                
                                 y -= dcos(angle);
                           }  
                        }
              
                        // Handling:
                           player_handle_layers();     
                           player_handle_grabs();                      
                           player_handle_monitors("top");
                           player_handle_breakable_walls();
                           player_handle_corkscrews();    
                           player_handle_enemies();
                           player_handle_springs();
                           player_handle_watersurface();
                           player_handle_tunnels();     
                           player_handle_platforms();                           
                                                                         
                        // Check for landing:
                           if(y_speed >= 0 && player_collision_check(COL_BOTTOM, MASK_BIG, x, y, 0, -1))
                           {                           
                              // Set Calculate angles:
                                 if(player_collision_check(COL_LEFT_EDGE, x, y, 0, -1, -1) && player_collision_check(COL_RIGHT_EDGE, x, y, 0, -1, -1))
                                 {
                                    player_angle(player_calculate_angle(x, y, angle));
                                 }else{
                                    player_angle(0);
                                 }
                                 
                              // Check if landed on obstacles:
                                 if(player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, par_obstacles))
                                 {
                                    player_angle(0);
                                 }                  
                                 
                              // Change horizontal speed upon landing on flat terrain or slopes.          
                                 if(abs(x_speed) <= abs(y_speed) && angle_relative >= 22.5 && angle_relative <= 337.5)
                                 {
                                    x_speed = -y_speed*sign(dsin(angle_relative));
                                    if(angle_relative < 45 || angle_relative > 315)
                                    { 
                                       x_speed *= 0.5; 
                                    }
                                 }
                                 
                              // Set ground flag.
                                 y_speed = 0;
                                 ground  = true;
                                 
                              // Return to normal state:
                                 if(state == STATE_HURT || state == STATE_JUMP)
                                 {
                                    state = STATE_DEFAULT;
                                 }
                                 
                              // Return to normal state after flying.
                                 if(state == STATE_FLY || state == STATE_FLYDROP)
                                 {
                                    state          = STATE_DEFAULT;
                                    y_acceleration = y_accel_common;
                                 }                                 
                           }
                           
                        // Ceiling handling:
                           if((y_speed < 0 && player_collision_check(COL_TOP, MASK_LARGE, x, y, 0, -1)) && (!player_collision_check(COL_TOP_OBJECT, MASK_LARGE, x, y, angle, par_obstacles)) && (_collision_checking))
                           {
                              // Set angle:
                                 player_angle(180);                                 
                              
                              // Check if it's possible to land on the ceiling.
                                 if(player_collision_check(COL_LEFT_EDGE, x, y, angle, -1, -1) && player_collision_check(COL_RIGHT_EDGE, x, y, angle, -1, -1))
                                 {
                                    // Calculate angle:
                                       player_angle(player_calculate_angle(x, y, angle));
                                       
                                    // Check if the angle isn't flat:
                                       if(angle_relative > 160 && angle_relative < 200)
                                       {
                                          player_angle(0);
                                          y_speed = 0;
                                       }
                                       
                                    // If the angle isn't flat, set new movement values:
                                       x_speed -= dsin(angle)*y_speed;
                                       ground   = true;
                                 }
                                 else
                                 {
                                    // Set angle:
                                       player_angle(0);
                                       y_speed = 0;
                                       if not(ground)
                                       {
                                          break;
                                       }
                                 }                               
                           }   
                           
                           // Do another wall Collision check to prevent any glitches:
                            if (_collision_checking)
                            {                         
                                  while(player_collision_check(COL_RIGHT, MASK_MID, x, y, angle, -1))
                                  {
                                        x -= dcos(angle);
                                        y += dsin(angle);
                                  }    
                                  while(player_collision_check(COL_LEFT, MASK_MID, x, y, angle, -1))
                                  {
                                        x += dcos(angle);
                                        y -= dsin(angle);
                                  }
                            }
                           
                           // Handling:
                              player_handle_rings();
                              player_handle_grabs();
                              player_handle_obstacles();                              
                              player_handle_monitors("side");
                              player_handle_breakable_walls();
                              player_handle_corkscrews();
                              player_handle_spikes();
                              player_handle_tunnels();
                              player_handle_slipping();

                              
                           // Abort:
                              if(y_speed == 0)
                              {
                                 break; 
                              }                                                                                                                                                                                  
                 } 
          }    
            
          // Fall off the ground if the edges aren't colliding         
             if(ground && angle != 0){
                if(!player_collision_check(COL_LEFT_EDGE, x, y, angle, -1, -1) || !player_collision_check(COL_RIGHT_EDGE, x, y, angle, -1, -1)){
                   if(floor_mode == 1 || floor_mode == 3){           
                      y_speed       = -(dsin(angle_relative) * g_speed)                                
                      x_speed       =   dcos(angle_relative) * x_speed;
                      launch_lock   = 3;
                      ground        = false;              
                      shield_usable = false;               
                   }else{
                      ground  = false;
                      y_speed = -dsin(angle)*x_speed;
                      x_speed =  dcos(angle)*x_speed;                   
                   }
                }
             }                                                      
    }

 // Launch lock:
    if(launch_lock)
    {
       launch_lock -= 1;
       x_speed = 0;
    }if(launch_lock < 0) { launch_lock = 0 }
 
 // Get ground speed:
    player_gspeed();
 
