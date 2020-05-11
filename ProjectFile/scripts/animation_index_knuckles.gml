/// animation_index_knuckles()
 // Store all of knuckles' animations here:
 
 // Idle:
    if(animation = "idle")
    {
       sprite                 = spr_knuckles_idle;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;
    }
    
 // Idle (Bored):
    if(animation = "idle bored")
    {
       sprite                 = spr_knuckles_idle_bored;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Idle (Punch):
    if(animation = "idle bored 2")
    {
       sprite                 = spr_knuckles_idle_bored;
       animation_start        = 2;
       animation_end          = 12;
       animation_loop         = 2;
       animation_speed        = 0.15;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }    
    
 // Crouch:
    if(animation = "crouch")
    {
       sprite                 = spr_knuckles_crouch;
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
       sprite                 = spr_knuckles_lookup;
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
       sprite                 = spr_knuckles_walk;
       animation_start        = 0;
       animation_end          = 7;
       animation_loop         = 0;
       animation_speed        = 0.125;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to   =  "";
       animation_linked_frame = 0;     
    }
 
 // Run:
    if(animation = "run")
    {
       sprite                 = spr_knuckles_run;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }    
    
 // Roll:
    if(animation = "roll")
    {
       sprite                 = spr_knuckles_roll;
       animation_start        = 0;
       animation_end          = 7;
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
       sprite                 = spr_knuckles_spindash;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 0;
       animation_speed        = 0.8;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }   
    
 // Spring:
    if(animation = "spring")
    {
       sprite                 = spr_knuckles_spring;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }        
    
 // Skid:
    if(animation = "skid")
    {
       sprite                 = spr_knuckles_skid;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 1;
       animation_speed        = 0.25;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "skid turn";
       animation_linked_frame = 0;      
    }      
      
 // Skid turn:
    if(animation = "skid turn")
    {
       sprite                 = spr_knuckles_skid;
       animation_start        = 1;
       animation_end          = 1;
       animation_loop         = 1;
       animation_speed        = 0.25;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }        
      
 // Push:
    if(animation = "push")
    {
       sprite                 = spr_knuckles_push;
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
       sprite                 = spr_knuckles_grab;
       animation_start        = 0;
       animation_end          = 3;
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
       sprite                 = spr_knuckles_corkscrew;
       animation_start        = 0;
       animation_end          = 11;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
       
 // Glide.
    if(animation = "glide")
    {
       sprite                 = spr_knuckles_glide;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }    
    
 // Glide drop.
    if(animation = "glide drop")
    {
       sprite                 = spr_knuckles_glide_drop;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.15;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }  
        
 // Slide.
    if(animation = "slide")
    {
       sprite                 = spr_knuckles_slide;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }        
        
 // Climb.
    if(animation = "climb")
    {
       sprite                 = spr_knuckles_climb;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }          
       
 // Ledge climb.
    if(animation = "ledge climb")
    {
       sprite                 = spr_knuckles_ledge;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 0;
       animation_speed        = 0.20;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }      
          
 // Hurt.
    if(animation = "hurt")
    {
       sprite                 = spr_knuckles_hurt;
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
       sprite                 = spr_knuckles_breath;
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
       sprite                 = spr_knuckles_die;
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
       sprite                 = spr_knuckles_drown;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }                            
