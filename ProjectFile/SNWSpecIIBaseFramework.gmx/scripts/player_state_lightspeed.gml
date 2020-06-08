/// player_state_lightspeed()

  near_ring = instance_nearest(x,y,obj_ring_lightspeed);
  
  // Stop Lightspeed Dash
  if distance_to_object(obj_ring_lightspeed) > 50 && state == STATE_LIGHTSPEED
  {
    state = STATE_DEFAULT; 
    x_speed = hspeed / 1.5;
    y_speed = vspeed / 1.5;
    motion_set(0,0);  
  }
      
      
  if instance_exists(obj_ring_lightspeed)
  {
    if (state == STATE_LIGHTSPEED)
    {
      x_speed=0;
      y_speed=0;  
      dir = floor(point_direction(x,y,near_ring.x,near_ring.y));
      motion_set(dir,15); // Start "following" the rings.
      animation_angle = point_direction(x,y,near_ring.x,near_ring.y);                
    };

   // Do the action
    if distance_to_object(obj_ring_lightspeed) <= 50 && input_specialC_pressed
    {
      if sign(near_ring.x-x) == animation_direction
      state = STATE_LIGHTSPEED;  
    } 
  };


