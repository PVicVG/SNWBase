/// player_physics_knuckles()
 // Sets knuckles' physics values.
           
    // Update Gliding
           // Vertical:  
          if(state = STATE_GLIDE or state = STATE_CLIMB)
          {                                 
             y_acceleration = 0;
          }

    // Update Jumping Strength
         // Default physics.
            if(physic_mode == 0) 
            {
               // Jump:
                  jump_strength     = -6;   
                  jump_release      = -4;     
            }
            
         // Underwater physics.
            if(physic_mode == 1) 
            {
                                      
               // Jump:
                  jump_strength     = -3;
                  jump_release      = -2;     
                  
            }     

