/// player_handle_rings()
 // Used to collect rings.
 
    var ring, magnetized_ring;
    ring            = player_collision_check(COL_MAIN_OBJECT, x, y, obj_ring, -1, -1);
    magnetized_ring = player_collision_check(COL_MAIN_OBJECT, x, y, obj_ring_magnetized, -1, -1); 
    
    if(ring != noone && state != STATE_HURT)
    {
       // Collect ring:
          with(ring)
          {
               dummy_effect_create(spr_ring_sparkle, 0.4, x, y, -10, 0);
               instance_destroy();
          }
          if(player_type == IS_PLAYER)
          {
             global.player_rings += 1;    
          }
          else
          {
             ai_ring = 1;
             global.player_rings += 1;
          }
                
       // Play ring sound:
          global.ring_sound *= -1;
          boost_amount += 5;
          aud_play_simple(general_ring);
          
    }
    if(magnetized_ring != noone && state != STATE_HURT)
    {
       // Collect ring:
          with(magnetized_ring)
          {
               dummy_effect_create(spr_ring_sparkle, 0.4, x, y, -10, 0);          
               instance_destroy();
          }
          if(player_type == IS_PLAYER)
          {
             global.player_rings += 1;    
          }
          else
          {
             ai_ring = 1;
             global.player_rings += 1;                 
          }  
          
       // Play ring sound:
          global.ring_sound *= -1;
          aud_play_simple(general_ring);
          boost_amount += 7;    
    } 
 
