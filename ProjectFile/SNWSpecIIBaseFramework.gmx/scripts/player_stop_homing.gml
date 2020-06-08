// Stop homing target. 
                    if(instance_exists(obj_homing_target))
                    {
                       if(instance_place(x, y, obj_homing_target) && state == STATE_HOMING)
                       {
                          with(obj_homing_target) instance_destroy();
                          if(homing_mode = 0)
                          {
                             x_speed = 0;
                          }
                          else
                          {
                             x_speed = x_speed*0.5;
                          }
                          
                          state = STATE_JUMP;
                          shield_usable = true;                          
                      }
                    }
