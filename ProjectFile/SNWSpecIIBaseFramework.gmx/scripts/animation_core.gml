/// animation_core();
 // Actual core of the animation system.
   
 // Reset flag:
     animation_flags_changed = false;
     
 // Check if the animation has changed:    
    if(animation != animation_previous)
    {
       // If the animation has changed, set the previous animation to the new one.
          animation_previous = animation;
       
       // Get the animation data:
          animation_data();
          
       // Set animation frame to the starting frame:
          animation_frame = animation_start;
          
       // Set flags:
          animation_flags_changed  = true;
          animation_flags_finished = false;
    }

 // Check if the animation has not finished.
    if(animation_flags_finished == false)
    {
       // Add speed to our animation:
          animation_frame += animation_speed;
          
       // Check if we reached the last frame:
          if(floor(animation_frame) > animation_end)
          {
             // If we allow the animation to be repeated, set the frame to the loop start.
                if(animation_repeat == true)
                {
                   animation_frame = animation_loop;
                }else{
                   // Check the number of times we allow the animation to be repeated:
                      if(animation_repeat_times > 0)
                      {
                         // Loop back:
                            animation_frame = animation_loop;
                            animation_repeat_times -= 1;
                      }else{
                         // The animation ended, switch to the linked animation if one exists:
                            animation_frame = animation_end;
                            if(animation_linked_to != "")
                            {
                               animation = animation_linked_to;
                               if(animation_linked_frame != 0)
                               {
                                  animation_frame = animation_linked_frame;
                               }
                            }
                            else{ // Set the finished flag:
                               animation_flags_finished = true;
                            }
                      }                      
                }
          }
    }
   
 // Tail animation speed. 
    if(tails_tail_sprite != noone)
    {
       tails_tail_frame += tails_tail_speed;
    }

