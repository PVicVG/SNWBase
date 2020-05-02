/// player_handle_layer()
 // Script that handles layer switching.
 
 // Layer 0:
    if(place_meeting(x, y, obj_layer_switch_0))
    {
       collision_layer = 0;
    }
 
 // Layer 1:
    if(place_meeting(x, y, obj_layer_switch_1))
    {
       collision_layer = 1;
    }
       
 // Switch Layer:
    if(place_meeting(x, y, obj_layer_switch) && ground)
    {
       if(x_speed > 0)
       { 
          collision_layer = 1;
       }
       if(x_speed < 0)
       {
          collision_layer = 0;
       }
    }
 // Loop Layer 0:
    if(place_meeting(x, y, obj_loop_switch_0))
    {
       if(x_speed > 0)
       {
          loop_direction = 1; 
       }   
       else
       {
          loop_direction = 0;
       }
       collision_layer = 0;
    }
 
 // Loop Layer 1:
    if(place_meeting(x, y, obj_loop_switch_1))
    {
       if(x_speed < 0)
       {
          loop_direction = -1; 
       }   
       else
       {
          loop_direction = 0;
       }  
       collision_layer = 1;
    }
    
 // Reset loop direction.
    if(!ground || x_speed == 0)
    {
       loop_direction = 0;
    }

