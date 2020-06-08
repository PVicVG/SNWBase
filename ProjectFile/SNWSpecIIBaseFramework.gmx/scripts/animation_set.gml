///animation_set(sprite, start, end, loop, speed, repeat)
/// Set Animations
       sprite                 = argument0;
       animation_start        = argument1;
       
       // Ends in the end of the sprite if you set it to -1
           if argument2 == -1
           {
               animation_end          = sprite_get_number(argument0) - 1;
           }
           else
           {
               animation_end          = argument2;
           }
       
       // Loops in the end if you set it to -1
            if argument3 == -1
           {
               animation_loop          = sprite_get_number(argument0) - 1;
           }
           else
           {
               animation_loop          = argument3;
           }
       
       animation_speed        = argument4;
       animation_repeat       = argument5; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;
     
