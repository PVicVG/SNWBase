//Outside Screen Handling
if !inview() && deactivate_outside_view
{
exit;
}

/// ============= SPIN
    // spin depending on angle
    if (spin_object) {
        animation_angle -= abs(floor(x_speed));
        animation_angle -= abs(floor(y_speed));
    }

/// =========== COLLISION
    //Ground Collision
        var g;
        g = physics_collision_check()
        
    //Uses both the default Neptune collision method and the collision rectangle scripts (used frequently in Mario Worlds Delta) to check for collision.
        if g && collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+1, par_terrain, 0, 0)
        {
            ground = true;
        }
        else
        {
            ground = false;
        }
        
    //Wall Collision
    wall_check()
        
/// =========== MOVEMENT
     // X Movement.    
        repeat(abs(x_speed)){
              if(place_meeting(x + sign(x_speed), y, par_solid) && !place_meeting(x + sign(x_speed), y - 1, par_solid)){
                 y -= 1;
              }
              if(place_meeting(x + sign(x_speed), y + 2, par_solid) && !place_meeting(x + sign(x_speed), y + 1, par_solid)){
                 y += 1;    
              }    
              if(!place_meeting(x + sign(x_speed), y, par_solid)){
                 x += sign(x_speed);
              }else{
               x_speed = 0; 
              }         
        }
    
        if(apply_friction) {
           x_speed = scr_approach(x_speed, 0, x_speed_friction);
        }
    
        
     // Y Movement.
        repeat(abs(y_speed)){
               if(!physics_collision_check()){
                  y += sign(y_speed);
               }else{
                     //Land.
                     y_speed   = 0; 
               }       
        }
           
        if(ground == false && apply_physics){
           y_speed = scr_approach(y_speed, y_speed_top, y_speed_gravity);
        }
        
