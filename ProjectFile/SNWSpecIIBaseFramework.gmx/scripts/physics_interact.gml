///physics_interact(object)

    wall_check()
    
    // ====== INTERACT. ====== //
        /// Horizontal Handling
        if x != argument0.x {
            if x < argument0.x {
                x_speed = -4;
            } else {
                x_speed = 4;
            }
        } else {
            if (id < argument0.id) {
                x_speed = -4;
            } else {
                x_speed = 4;
            }
        }  
        
        animation_angle = sign(x_speed);
        
        
            // Vertical Handling
                if !ground {
                    if y != other.y {
                        if y < other.y {
                            y_speed = -4;
                        } else {
                            y_speed = 4;
                        }
                    } else {
                        if (id < other.id) {
                            y_speed = -4;
                        } else {
                            y_speed = 4;
                        }
                    }        
                }

    // Bounce Upwards.
    if ((x_speed < 0 && wallL) or (x_speed > 0 && wallR)) && (ground or y_speed == 0) && self!=obj_player {
        ground = false;
        y_speed = -6;
    }
        

    
