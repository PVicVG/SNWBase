/// animation_index_fang()
 // Store all of Fang's animations here:
 
/// ============================================= //
/// ================= NORMAL ANIMATIONS. ======= //
/// ============================================= //

 // Idle:
    if(animation = "idle")
    {
       sprite                 = spr_fang_idle;
    }
    
 // Idle (Bored):
    if(animation = "idle bored")
    {
       sprite                 = spr_fang_bored;  
    }
    
 // Walk
    if(animation = "walk" || animation == "push")
    {
       sprite                 = spr_fang_walk;
    }
    
 // Run
    if(animation = "run")
    {
       sprite                 = spr_fang_run;
    }
    
 // Spring
    if(animation = "spring")
    {
       sprite                 = spr_fang_spring;
    }

 // Roll
    if(animation = "roll" || animation = "corkscrew")
    {
       sprite                 = spr_fang_roll;
    }    
    
 // Spindash
    if(animation = "spindash")
    {
       sprite                 = spr_fang_spindash;
    }     
    
 // Hurt
    if(animation = "hurt")
    {
       sprite                 = spr_fang_hurt;  
    }

 // Crouch
    if(animation = "crouch")
    {
       sprite                 = spr_fang_crouch;  
    }  
    
 // Grab
    if(animation = "grab")
    {
       sprite                 = spr_fang_grab;  
    }
    
 // Lookup
    if(animation = "look up")
    {
       sprite                 = spr_fang_lookup;  
    }          
    
 // Skid
    if(animation = "skid" || animation = "skid turn")
    {
       sprite                 = spr_fang_skid;  
    }   
    
 // Breath
    if(animation = "breath")
    {
       sprite                 = spr_fang_breath;  
    } 
    
 // Die
    if(animation = "death")
    {
       sprite                 = spr_fang_die;  
    }
    
 // Drown
    if(animation = "drown")
    {
       sprite                 = spr_fang_drown;  
    }
 
/// ============================================= //
/// ================= NEW ANIMATIONS. ======= //
/// ============================================= //   
        
 // Jump
    if(animation = "jump")
    {
       sprite                 = spr_fang_jump;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0.125;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to   =  "";
       animation_linked_frame = 0;     
    }
    
 // Fall
    if(animation = "fall")
    {
       sprite                 = spr_fang_fall;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0.125;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to   =  "";
       animation_linked_frame = 0;     
    }
    

    
 // Bounce Jump
    if(animation = "bounce_jump")
    {
       sprite                 = spr_fang_bounce_jump;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 1;
       animation_speed        = 0.15;
       animation_repeat       = false; 
       animation_repeat_times = 0;
       animation_linked_to   =  "";
       animation_linked_frame = 0;     
    }    
    
 // Bounce Fall
    if(animation = "bounce_fall")
    {
       sprite                 = spr_fang_bounce_fall;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = true; 
       animation_repeat_times = 0;
       animation_linked_to   =  "";
       animation_linked_frame = 0;     
    } 
       
 // Bounce Land
    if(animation = "bounce_land")
    {
       sprite                 = spr_fang_bounce_land;
       animation_start        = 0;
       animation_end          = 2;
       animation_loop         = 2;
       animation_speed        = 0.2;
       animation_repeat       = false; 
       animation_repeat_times = 0;
       animation_linked_to   =  "";
       animation_linked_frame = 0;     
    }    
    
 // Shooting
    if(animation = "shoot")
    {
       sprite                 = spr_fang_shoot;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 5;
       animation_speed        = 0.25;
       animation_repeat       = false; 
       animation_repeat_times = 0;
       animation_linked_to   =  "idle";
       animation_linked_frame = 5;     
    }   
             
    

