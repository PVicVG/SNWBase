/// animation_index_mighty()
 // Store all of the EggRobo's animations here:
 
/// ============================================= //
/// ================= NORMAL ANIMATIONS. ======= //
/// ============================================= //

 // Idle:
    if(animation = "idle")
    {
        sprite = spr_mighty_idle
    }
    
 // Idle Bored:
    if(animation = "idle bored")
    {
        animation_set(spr_mighty_idle_bored, 0, -1, 2, 0.1, 1)
    }
    
 // Walk
    if(animation = "walk" || animation == "push")
    {
       sprite                 = spr_mighty_walk;
    }
    
 // Run
    if(animation = "run")
    {
       sprite                 = spr_mighty_run;
    }
    
 // Spring
    if(animation = "spring")
    {
       sprite                 = spr_mighty_spring;
    }

 // Roll
    if(animation = "roll" || animation = "corkscrew")
    {
       sprite                 = spr_mighty_roll;
    }    
    
 // Spindash
    if(animation = "spindash")
    {
       sprite                 = spr_mighty_spindash;
    }     
    
 // Hurt
    if(animation = "hurt")
    {
       sprite                 = spr_mighty_hurt;  
    }

 // Crouch
    if(animation = "crouch")
    {
       sprite                 = spr_mighty_crouch;  
    }  
    
 // Grab
    if(animation = "grab")
    {
       sprite                 = spr_mighty_grab;  
    }
    
 // Lookup
    if(animation = "look up")
    {
       sprite                 = spr_mighty_lookup;  
    }          
    
 // Skid
    if(animation = "skid" || animation = "skid turn")
    {
       sprite                 = spr_mighty_skid;  
    }   
    
 // Breath
    if(animation = "breath")
    {
       sprite                 = spr_mighty_breath;  
    } 
    
 // Die
    if(animation = "death")
    {
       sprite                 = spr_mighty_die;  
    }
    
 // Drown
    if(animation = "drown")
    {
       sprite                 = spr_mighty_drown;  
    }
    
/// ============== NEW    
    
 // Hammer Drop
    if(animation = "hammer drop")
    {
       animation_set(spr_mighty_hammer_drop, 0, -1, 5, 1, 1)
    }

 // Uncurl
    if(animation = "uncurl")
    {
       animation_set(spr_mighty_uncurl, 0, -1, 4, 0.25, 1)
    }
