/// animation_index_pingu()
 // Store all of the PINGU's animations here:
 
/// ============================================= //
/// ================= NORMAL ANIMATIONS. ======= //
/// ============================================= //

 // Idle:
    if(animation = "idle")
    {
        animation_set(spr_pingu_idle, 0, -1, 0, 0.2, 1)
    }
    
 // Look up:
    if(animation = "look up")
    {
        animation_set(spr_pingu_lookup, 0, -1, 0, 0.2, 1)
    }
    
 // Crouch:
    if(animation = "crouch")
    {
        animation_set(spr_pingu_crouch, 0, -1, 0, 0.2, 1)
    }

 // Walk:
    if(animation != "idle" && animation != "look up" && animation != "crouch")
    {
        animation_set(spr_pingu_walk, 0, -1, 0, 0.2, 1)
    }

