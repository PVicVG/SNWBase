/// animation_index_eggrobo()
 // Store all of the EggRobo's animations here:
 
/// ============================================= //
/// ================= NORMAL ANIMATIONS. ======= //
/// ============================================= //

 // Idle:
    if(animation = "idle")
    {
       sprite                 = spr_eggrobo_idle;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.05;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;
    }
    
 // Idle Bored:
    if(animation = "idle bored")
    {
       sprite                 = spr_eggrobo_idle_bored;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.05;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;
    }
    
    
 // Walk:
    if(animation = "walk" || animation = "push" )
    {
       sprite                 = spr_eggrobo_walk;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 0;
       animation_speed        = 0.1;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;
    }
    
 // Run:
    if(animation = "run")
    {
       sprite                 = spr_eggrobo_walk;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;
    }
    
 // Jump:
    if(animation = "jump" || animation = "spring")
    {
        animation_set(spr_eggrobo_jump, 0, 0, 0, 0, 0)
    }

 // Fall:
    if(animation = "fall" || animation = "skid" || animation = "skid turn")
    {
        animation_set(spr_eggrobo_fall, 0, 0, 0, 0, 0)
    }
    
    
 // Roll:
    if(animation = "roll")
    {
        animation_set(spr_eggrobo_roll, 0, -1, 0, 0.2, 1)
    }
    
 // Crouch:
    if(animation = "crouch")
    {
        animation_set(spr_eggrobo_crouch, 0, -1, -1, 0.25, 0)
    }
    
 // Dash:
    if(animation = "dash" || animation = "hurt" || animation = "death" || animation = "breath" || animation = "drown")
    {
        animation_set(spr_eggrobo_dash, 0, 0, 0, 0, 0)
    }
    
 // Fly:
    if(animation = "fly")
    {
        animation_set(spr_eggrobo_fly, 0, -1, 0, 0.25, 1)
    }
    
// Fly Drop:
    if(animation = "fly exhausted")
    {
        animation_set(spr_eggrobo_fly_exhausted, 0, -1, 0, 0.25, 1)
    }
    
 // Lookup:
    if(animation = "look up")
    {
        animation_set(spr_eggrobo_lookup, 0, 0, 0, 0, 0)
    }
    
 // Grab:
    if(animation = "grab")
    {
       sprite                 = spr_eggrobo_grab;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;
    }
    
