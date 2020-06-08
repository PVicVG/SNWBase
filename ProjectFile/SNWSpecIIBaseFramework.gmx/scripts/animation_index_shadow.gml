/// animation_index_shadow()
 // Store all of the Shadow's animations here:
 
/// ============================================= //
/// ================= NORMAL ANIMATIONS. ======= //
/// ============================================= //

 // Idle:
    if(animation = "idle")
    {
        animation_set(spr_shadow_idle, 0, 0, 0, 0, 0)
    }
    
 // Idle Bored:
    if(animation = "idle bored")
    {
        animation_set(spr_shadow_idle_bored, 0, -1, 1, 0.1, 1)
    }
    
 // Lookup:
    if(animation = "look up")
    {
        animation_set(spr_shadow_lookup, 0, 0, 0, 0, 0)
    }
    
 // Crouch:
    if(animation = "crouch")
    {
        animation_set(spr_shadow_crouch, 0, 0, 0, 0, 0)
    }
    
 // Walk:
    if(animation = "walk")
    {
        animation_set(spr_shadow_walk, 0, -1, 0, 0.2, 1)
    }
    
 // Run:
    if(animation = "run")
    {
        animation_set(spr_shadow_run, 0, -1, 0, 0.22, 1)
    }
    
 // Roll:
    if(animation = "roll" || animation = "corkscrew")
    {
        animation_set(spr_shadow_roll, 0, -1, 0, 0.25, 1)
    }
    
 // Spindash:
    if(animation = "spindash")
    {
        animation_set(spr_shadow_spindash, 0, -1, 0, 0.25, 1)
    }
    
 // Skid:
    if(animation = "skid" || animation = "skid turn")
    {
        animation_set(spr_shadow_skid, 0, -1, 0, 0.2, 1)
    }
    
 // Push:
    if(animation = "push")
    {
        animation_set(spr_shadow_push, 0, -1, 1, 0.15, 1)
    }
    
 // Spring:
    if(animation = "spring")
    {
        animation_set(spr_shadow_spring, 0, -1, 0, 0.15, 1)
    }
    
 // Hurt:
    if(animation = "hurt")
    {
        animation_set(spr_shadow_hurt, 0, -1, 0, 0.2, 1)
    }
    
 // Breathe:
    if(animation = "breath")
    {
        sprite = spr_shadow_breath;
    }
    
 // Death:
    if(animation = "death")
    {
        sprite = spr_shadow_die;
    }
    
 // Drown:
    if(animation = "drown")
    {
        sprite = spr_shadow_drown;
    }
 
 // Grab:
    if (animation = "grab")
    {
        sprite = spr_shadow_grab;
    }
    
/// ============================================= //
/// ================= NEW ANIMATIONS. ======= //
/// ============================================= //

 // Disappear:
    if(animation = "disappear")
    {
        animation_set(spr_empty, 0, -1, -1, 0.2, 0)
    }
    
  // Appear:
    if(animation = "appear")
    {
        animation_set(spr_shadow_appear, 0, -1, -1, 0.2, 0)
    }

