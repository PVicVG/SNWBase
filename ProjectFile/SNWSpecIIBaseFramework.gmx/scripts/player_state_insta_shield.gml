/// player_state_insta_shield()
//  Script to execute the insta shield.

   // Only run if we have no shield:
      if (invincibility == 0 && (animation == "roll" || state == STATE_JUMP)) {
         if(shield_usable == true) {
            if(input_special_pressed) {
               shield_usable = false;
               jump_lock = false;
               INSTA = instance_create(floor(x), floor(y), obj_insta_shield)
               INSTA . Parent = id;

            }
         }
      }
