/// animation_index_amy()
 // Store all of the Amy's animations here:
 
/// ============================================= //
/// ================= NORMAL ANIMATIONS. ======= //
/// ============================================= //

 // Idle:
    if(animation = "idle" || animation = "idle bored")
    {
        animation_set(spr_amy_idle, 0, 0, 0, 0, 0)
    }
    
 // Lookup:
    if(animation = "look up")
    {
        animation_set(spr_amy_lookup, 0, -1, -1, 0.2, 0)
    }
    
 // Crouch:
    if(animation = "crouch")
    {
        animation_set(spr_amy_crouch, 0, -1, -1, 0.2, 0)
    }
    
 // Walk:
    if(animation = "walk")
    {
        animation_set(spr_amy_walk, 0, -1, 0, 0.2, 1)
    }
    
 // Run:
    if(animation = "run")
    {
        animation_set(spr_amy_run, 0, -1, 0, 0.22, 1)
    }
    
 // Roll:
    if(animation = "roll" || animation = "corkscrew")
    {
        animation_set(spr_amy_roll, 0, -1, 0, 0.25, 1)
    }
    
 // Spindash:
    if(animation = "spindash")
    {
        animation_set(spr_amy_spindash, 0, -1, 0, 0.25, 1)
    }
    
 // Skid:
    if(animation = "skid" || animation = "skid turn")
    {
        animation_set(spr_amy_skid, 0, -1, 0, 0.2, 1)
    }
    
 // Push:
    if(animation = "push")
    {
        animation_set(spr_amy_push, 0, -1, 1, 0.15, 1)
    }
    
 // Spring:
    if(animation = "spring")
    {
        animation_set(spr_amy_spring, 0, -1, 0, 0.15, 1)
    }
    
 // Hurt:
    if(animation = "hurt")
    {
        animation_set(spr_amy_hurt, 0, -1, 0, 0.2, 1)
    }
    
 // Grab:
    if(animation = "grab")
    {
        animation_set(spr_amy_grab, 0, -1, 0, 0.2, 1)
    }
    
 // Breathe:
    if(animation = "breath")
    {
        animation_set(spr_amy_breath, 0, -1, 0, 0.15, 1)
    }
    
 // Death:
    if(animation = "death")
    {
        animation_set(spr_amy_die, 0, -1, 0, 0.15, 1)
    }
    
 // Drown:
    if(animation = "drown")
    {
        animation_set(spr_amy_drown, 0, -1, 0, 0.15, 1)
    }
    
/// ============================================= //
/// ================= NEW ANIMATIONS. ======= //
/// ============================================= //

 // Hammer Spin:
    if(animation = "hammer spin")
    {
        animation_set(spr_amy_hammerspin, 0, -1, 0, 0.25, 1)
    }
    
 // Hammer Punch:
    if(animation = "hammer punch")
    {
        animation_set(spr_amy_punch, 0, -1, -1, 0.5, 0)
    }
    
 // Double Jump:
    if(animation = "double_jump")
    {
       sprite                 = spr_amy_spin;
       animation_start        = 0;
       animation_end          = 7;
       animation_loop         = 0;
       animation_speed        = 0.45;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "fall";
       animation_linked_frame = 0;
    }
    
 // Fall:
    if(animation = "fall")
    {
       sprite                 = spr_amy_fall;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 0;
       animation_speed        = 0.35;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;
    } 
    

