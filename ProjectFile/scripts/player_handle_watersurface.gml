/// player_handle_watersurface()
 // Used to handle the speed after going in or leaving water.

 // Only run if there's.
    if(global.water_position != -1)
    {
       // Entering the water. 
          if(y > global.water_position && previous_y < global.water_position)
          {
             x_speed *= 0.5;
             y_speed *= 0.25;
          }
          else // Leaving the water.
          {
             if(y < global.water_position && previous_y > global.water_position)
             {
                if(y_speed > -5){
                   y_speed *= 2;
                }
             }
          }
    }
