// Create Insta Shields;
            instance_create(view_xview[0] + random(480), view_yview[0] + random(270), obj_insta_shield);
            
        // Shake the Screen When Moving.
            if (abs(x_speed > 0))
            {
                scr_cam_shake();
            }
            
        // Explode Stuff.
            dummy_effect_create_ext(spr_explosion, 0.2, view_xview[0] + random(480), view_yview[0] + random(270), 5, 2, choose(bm_normal, bm_add), random(5), random(5), make_color_rgb(random(255), random(255), random(255)), random(0.5))
        
        // Shockwaves when Crouching or Noot Nooting
            if (state = STATE_CROUCH or state = STATE_LOOKUP)
            {
                if !instance_exists(obj_boost_shockwave)
                {
                    instance_create(x, y, obj_boost_shockwave);
                }
            }
        
        // Flash.
            global.custom_palette = choose(-2, -3, 0, 1, 2);
            
        // Invicibility Sparkles.
            instance_create(x,y,obj_invincibility_sparkle);
        
        // Speed shoe
            speedshoe = true;
            speedshoe_timer = 200;
