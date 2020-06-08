/// player_state_boost()

  // Stop Boosting
  if (input_special == false || boost_amount = 0 || abs(x_speed) < 2.2) && boosting == true // If isnt pressing the boost key or doesn't have boost power, stop boosting.
  {
    boosting = false;
    // To stop the sound i put in the boost object to avoid bugs
  }

  // When the boost key is pressed
  if input_special && boosting == false && boost_amount > 0 && tunnel_lock == false && (state == STATE_DEFAULT && ground || state == STATE_JUMP || state == STATE_ROLL || state == STATE_CORKSCREW || state == STATE_CORKSCREW_ROLL)
  {
    if (!player_collision_check(COL_LEFT, MASK_BIG, x, y, angle, -1)  && animation_direction == -1 || !player_collision_check(COL_RIGHT, MASK_BIG, x, y, angle, -1)  && animation_direction == 1) //( !scrPlayerCollisionObjectRight (x,y,angle,maskBig,objSlidePass) && animation_direction == 1 ||  !scrPlayerCollisionObjectLeft (x,y,angle,maskBig,objSlidePass) && animation_direction == -1 )
    {
        if !((x < (view_xview[0] + 32)) && animation_direction = -1) && !((x > (view_xview[0] + 450)) && animation_direction = 1)
        {
              // Speed up the player
              if abs(x_speed) < boost_startspeed
              x_speed = boost_startspeed * animation_direction;
        
              // If the player is rolling, change to the normal action
              if state == STATE_ROLL 
              state = STATE_DEFAULT;
         
              instance_create(x,y,obj_boost_shockwave);
              instance_create(x,y,obj_sonic_boom);
              obj_camera.cam_lag = 160;
              aud_play_sound(player_boost_start,global.sfx_volume,1,false,0);
        }
    }
  };

  // Keep Boosting.
  if (input_special && boost_amount > 0 && abs(x_speed) > 2.2)
  {
    if (state == STATE_DEFAULT && ground || state == STATE_JUMP || state == STATE_ROLL || state == STATE_CORKSCREW || state == STATE_CORKSCREW_ROLL)
    {
      boosting = true;
      if instance_exists(obj_boost) == false
      instance_create(x,y,obj_boost);
    }
  };
  
  // Keep Speed
  if (boosting)
  {
      boost_amount -= 0.2;
      
      if (animation_direction == sign(x_speed)) && (state != STATE_SKID)
      {
          if x_speed > 0 && x_speed < 11
          {
            x_speed = 11;
          }
          
          if x_speed < 0 && x_speed > -11
          {
            x_speed = -11;
          }
      }
      else
      {
        boosting = false;
      }
  }
  
  // Boost Amount max
    if boost_amount > 120
    {
        boost_amount = 120;
    }
    
    if boost_amount < 0
    {
        boost_amount = 0;
    }
