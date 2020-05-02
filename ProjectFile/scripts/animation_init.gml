/// Animation_Init()
 // Initialize animation system.sprite_add_from_surface
   
        if(player_index == CHAR_SONIC)
        {
           sprite = spr_sonic_idle;
        }
        if(player_index == CHAR_TAILS)
        {
           sprite = spr_tails_idle;
        } 
        if(player_index == CHAR_KNUCKLES)
        {
           sprite = spr_knuckles_idle;
        }                
        animation                 = "";
        animation_previous        = "";
        animation_frame           = 0;
        animation_start           = 0;
        animation_end             = 0;
        animation_loop            = 0;
        animation_speed           = 0;
        animation_repeat          = 0;
        animation_repeat_times    = 0;
        animation_linked_to       = "";
        animation_linked_frame    = 0;
        animation_flags_changed   = 0;
        animation_flags_finished  = 0;       
        animation_direction       = 1;
        animation_color           = c_white;
        animation_angle           = 0;
        animation_angle_mod       = 0;
        animation_alpha           = 1;
        animation_offset_x        = 0;
        animation_offset_y        = 0;
        animation_rendering_speed = 0;
        animation_frame_count     = 0;
