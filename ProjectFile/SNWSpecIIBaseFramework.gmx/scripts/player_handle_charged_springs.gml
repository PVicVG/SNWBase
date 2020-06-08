///player_handle_charged_springs
var charged;
charged = player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, obj_charged_spring)
    // Interact with charged spring
        if (charged)
        {
            if (input_action)
            {
                // Trigger Spring
                    if (charged.sprite_index == spr_charged_spring_normal)
                    {
                        charged.sprite_index = spr_charged_spring_charging;
                    }
                
                // Charge Spring
                    if (charged.sprite_index == spr_charged_spring_charging or charged.sprite_index == spr_charged_spring_charged)
                    {
                        // Snap to spring
                            x = charged.x + 16;
                                                        
                        // Set State
                            x_speed = 0;
                            y_speed = max(y_speed, 0);
                            input_down = true;
                            tunnel_lock = true;
                            state = STATE_ROLL;
                            animation = "roll";
                            animation_speed = 0.2;
                        
                        // Check how charged it is.
                            if charged.sprite_index == spr_charged_spring_charging
                            {
                                if charged.image_index < 23
                                {
                                    charged.image_index += 0.15;
                                }
                                else
                                {
                                    charged.sprite_index = spr_charged_spring_charged;
                                }
                            }
                        
                        // Max Charge
                            if (charged.sprite_index == spr_charged_spring_charged)
                            {
                                charged.image_index += 0.25;
                            }       
                    }
            }
            
        // Get Launched up.
        if (input_action_released)
        {
            if (charged.sprite_index == spr_charged_spring_charged) or (charged.sprite_index == spr_charged_spring_charging && image_index > 20)
            {
                ground = false;
                jump_completed = true;
                jump_lock = false;
                state = STATE_SPRING;
                y_speed = -14;
                x_speed = 0;
                aud_play_simple(general_spring);
                charged.sprite_index = spr_charged_spring_release;
                tunnel_lock = false;
            }
            else
            {
                ground = false;
                jump_completed = true;
                jump_lock = false;
                state = STATE_SPRING;
                x_speed = 0;
                y_speed = -((14/20)*charged.image_index)
                aud_play_simple(general_spring);
                charged.sprite_index = spr_charged_spring_release;
                tunnel_lock = false;
            }
        }
        
    }
