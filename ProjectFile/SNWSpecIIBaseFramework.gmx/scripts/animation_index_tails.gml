/// animation_index_tails()
 // Store all of tails animations here:
 
 // Idle:
    if(animation = "idle")
    {
       sprite                 = spr_tails_idle;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;    
    }
    
 // Idle (Blink):
    if(animation = "idle bored")
    {
       sprite                 = spr_tails_idle_bored;
       animation_start        = 0;
       animation_end          = 2;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "idle";
       animation_linked_frame = 0;      
    }
    
 // Idle (Yawn):
    if(animation = "idle bored 2")
    {
       sprite                 = spr_tails_idle_bored;
       animation_start        = 3;
       animation_end          = 7;
       animation_loop         = 6;
       animation_speed        = 0.15;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }  
    
 // Idle (Tapping foot):
    if(animation = "idle bored 3")
    {
       sprite                 = spr_tails_idle_bored;
       animation_start        = 8;
       animation_end          = 9;
       animation_loop         = 8;
       animation_speed        = 0.15;
       animation_repeat       = 0; 
       animation_repeat_times = 6;
       animation_linked_to    = "idle bored 4";
       animation_linked_frame = 0;      
    }  
    
 // Idle (Sleeping):
    if(animation = "idle bored 4")
    {
       sprite                 = spr_tails_idle_bored;
       animation_start        = 10;
       animation_end          = 12;
       animation_loop         = 12;
       animation_speed        = 0.15;
       animation_repeat       = 0; 
       animation_repeat_times = 6;
       animation_linked_to    = "idle";
       animation_linked_frame = 0;      
    }     
    
 // Crouch:
    if(animation = "crouch")
    {
       sprite                 = spr_tails_crouch;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.15;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;     
    }
    
 // Look up:
    if(animation = "look up")
    {
       sprite                 = spr_tails_lookup;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.15;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;    
    }
         
 // Walk:
    if(animation = "walk")
    {
       sprite                 = spr_tails_walk;
       animation_start        = 0;
       animation_end          = 7;
       animation_loop         = 0;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to   =  "";
       animation_linked_frame = 0;     
    }
 
 // Run:
    if(animation = "run")
    {
       sprite                 = spr_tails_run;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.125;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }    
    
 // Roll:
    if(animation = "roll")
    {
       sprite                 = spr_tails_roll;
       animation_start        = 0;
       animation_end          = 2;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }   
    
 // Spindash:
    if(animation = "spindash")
    {
       sprite                 = spr_tails_spindash;
       animation_start        = 0;
       animation_end          = 2;
       animation_loop         = 0;
       animation_speed        = 0.5;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }   
    
 // Spring:
    if(animation = "spring")
    {
       sprite                 = spr_tails_spring;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.1;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }        
    
 // Skid:
    if(animation = "skid")
    {
       sprite                 = spr_tails_skid;
       animation_start        = 0;
       animation_end          = 2;
       animation_loop         = 2;
       animation_speed        = 0.25;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "skid turn";
       animation_linked_frame = 0;      
    }      
      
 // Skid turn:
    if(animation = "skid turn")
    {
       sprite                 = spr_tails_skid;
       animation_start        = 3;
       animation_end          = 3;
       animation_loop         = 3;
       animation_speed        = 0.25;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }        
      
 // Push:
    if(animation = "push")
    {
       sprite                 = spr_tails_push;
       animation_start        = 0;
       animation_end          = 4;
       animation_loop         = 1;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }  
    
 // Grab
    if(animation = "grab")
    {
       sprite                 = spr_tails_grab;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 0;
       animation_speed        = 0.06;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }       
    
 // Glider
    if(animation = "glider")
    {
       sprite                 = spr_tails_grab;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0.06;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }     
    
 // Corkscrew.
    if(animation = "corkscrew")
    {
       sprite                 = spr_tails_corkscrew;
       animation_start        = 0;
       animation_end          = 11;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Fly.
    if(animation = "fly")
    {
       sprite                 = spr_tails_fly;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Fly exhausted.
    if(animation = "fly exhausted")
    {
       sprite                 = spr_tails_fly_exhausted;
       animation_start        = 0;
       animation_end          = 4;
       animation_loop         = 0;
       animation_speed        = 0.045;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }  
    
 // Swim.
    if(animation = "swim")
    {
       sprite                 = spr_tails_swim;
       animation_start        = 0;
       animation_end          = 4;
       animation_loop         = 0;
       animation_speed        = 0.25;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Swim exhausted.
    if(animation = "swim exhausted")
    {
       sprite                 = spr_tails_swim_exhausted;
       animation_start        = 0;
       animation_end          = 2;
       animation_loop         = 0;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }      
                            
 // Hurt.
    if(animation = "hurt")
    {
       sprite                 = spr_tails_hurt;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }        
    
 // Breath.
    if(animation = "breath")
    {
       sprite                 = spr_tails_breath;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }   
        
 // Death.
    if(animation = "death")
    {
       sprite                 = spr_tails_die;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }   
        
 // Drown.
    if(animation = "drown")
    {
       sprite                 = spr_tails_drown;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }                             
    
 // Transform.
    if(animation = "transform")
    {
       sprite                 = spr_tails_transform;
       animation_start        = 0;
       animation_end          = 4;
       animation_loop         = 3;
       animation_speed        = 0.18;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }     
    
  // Float.
    if(animation = "float")
    {
       sprite                 = spr_tails_float;
       animation_start        = 0;
       animation_end          = 7;
       animation_loop         = 0;
       animation_speed        = 0.18;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }         
    
 // Roll:
    if(animation = "tube")
    {
       sprite                 = spr_tails_roll;
       animation_start        = 0;
       animation_end          = 7;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }   
           
 // Falling.
    if(animation = "falling")
    {
       sprite                 = spr_tails_falling;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }            
    
   // Goal:            
     if(animation = "goal")
     {
        sprite                 = spr_tails_goal;         
        animation_start        = 0;
        animation_end          = 2;
        animation_loop         = 2;
        animation_speed        = 0.2;
        animation_repeat       = 1; 
        animation_repeat_times = -1;
        animation_linked_to    = "";
        animation_linked_frame = 0;     
     }      
    
 // Pole grab vertical:
    if(animation = "pole grab")
    {
       sprite                 = spr_tails_pole_grab;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }  
    
 // Pole grab horizontal:
    if(animation = "pole grab horizontal")
    {
       sprite                 = spr_tails_pole_grab_h;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.1;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }            
           
                   
