///physics_create(apply_physics, apply_friction, deactivate_outside_view, spin_object, apply_interactions)
  // Horizontal:
    x_speed   = 0;
    x_speed_max     = 3;
    x_speed_accel   = 0.146875;
    x_speed_decel   = 0.5;
    x_speed_friction = 0.1;
    
 // Vertical:
    y_speed        = 0;
    y_speed_top          = 12;
    y_speed_gravity      = 0.21875;
    y_jumpstrength       = -6.5;

 // Collision:
    ground   = false;
    wallR = noone;
    wallL = noone;
    
 // Animations
    animation_angle = 0;
    animation_direction = 1;
       
 // Flags
    apply_physics = argument0;
    apply_friction = argument1;
    deactivate_outside_view = argument2;    
    spin_object = argument3;
    apply_interactions = argument4;
