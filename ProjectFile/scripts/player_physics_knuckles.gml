/// player_physics_knuckles()
 // Sets knuckles' physics values.
    
 // Default physics.
    if(physic_mode == 0) 
    {
       // Horizontal:
          if(speedshoe == 0)
          {
             x_speed_top = 6;
          }
          else
          {
             x_speed_top = 16;          
          }
 
          if(speedshoe == 0)
          {               
             x_acceleration = 0.046875;
          }
          else
          {
             x_acceleration = 0.09375;
          }
          
          x_deceleration    = 0.5;      
          x_slope_factor    = 0.125;  
          
          if(speedshoe == 0)
          {  
             x_air_accel = 0.09375; 
          } 
          else
          {
             x_air_accel = 0.1875;
          }
          
       // Vertical:           
          if(state != STATE_GLIDE && state != STATE_CLIMB)
          {                
             if(state = STATE_HURT){
                y_acceleration = 0.1875;
             }else{
                y_acceleration = y_accel_common;
             }
          }
          else
          {
             y_acceleration = 0;
          }
          
       // Jump:
          jump_strength     = -6;   
          jump_release      = -4;     
 
       // Roll:
          roll_deceleration = 0.125;    
          if(speedshoe == 0)
          {
             roll_friction = 0.0234375; 
          } 
          else
          {
             roll_friction = 0.046875;
          }
          roll_decel_up     = 0.078125;  
          roll_decel_down   = 0.3125;    
    }
    
 // Underwater physics.
    if(physic_mode == 1) 
    {
       // Horizontal:
          x_speed_top       = 3;            
          x_acceleration    = 0.0234375;

          x_deceleration    = 0.5;      
          x_slope_factor    = 0.25;  

          x_air_accel       = 0.046875; 
          
       // Vertical:  
          if(state != STATE_GLIDE && state != STATE_CLIMB)
          {                                 
             if(state = STATE_HURT){
                y_acceleration = 0.09375;
             }else{
                y_acceleration = 0.0625;
             } 
          }
          else
          {
             y_acceleration = 0;
          }
                    
       // Jump:
          jump_strength     = -3;
          jump_release      = -2;     
 
       // Roll:
          roll_deceleration = 0.125;    
          roll_friction     = 0.0234375; 
          roll_decel_up     = 0.078125;  
          roll_decel_down   = 0.3125;    
    }
