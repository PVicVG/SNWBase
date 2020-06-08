/// animation_index_default()
 // Store all of the default animations here:
 
 // Idle:
    if(animation = "idle")
    {
       sprite                 = spr_sonic_idle;
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
       sprite                 = spr_sonic_idle_bored;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 2;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Crouch:
    if(animation = "crouch")
    {
       sprite                 = spr_sonic_crouch;
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
       sprite                 = spr_sonic_lookup;
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
       sprite                 = spr_sonic_walk;
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
       sprite                 = spr_sonic_run;
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
       sprite                 = spr_sonic_roll;
       animation_start        = 0;
       animation_end          = 7;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }   
 
 // Dropdash:
    if(animation = "dropdash")
    {
       sprite                 = spr_sonic_dropdash;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 0;
       animation_speed        = 0.5;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }   
        
 // Spindash:
    if(animation = "spindash")
    {
       sprite                 = spr_sonic_spindash;
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
       sprite                 = spr_sonic_spring;
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
       sprite                 = spr_sonic_skid;
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
       sprite                 = spr_sonic_skid_turn;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0.25;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }        
      
 // Push:
    if(animation = "push")
    {
       sprite                 = spr_sonic_push;
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
       sprite                 = spr_sonic_grab;
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
       sprite                 = spr_sonic_corkscrew;
       animation_start        = 0;
       animation_end          = 11;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
                
 // Hurt.
    if(animation = "hurt")
    {
       sprite                 = spr_sonic_hurt;
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
       sprite                 = spr_sonic_breath;
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
       sprite                 = spr_sonic_die;
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
       sprite                 = spr_sonic_drown;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }               
    
    
          
    
          
