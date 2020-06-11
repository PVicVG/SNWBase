///     scr_game_init()
///     Initializes the Main Variables.

 // Randomize.
    random_set_seed(current_second);
    randomize();
    
 // Initialize Palette System
    pal_swap_init_system(shd_pal_swapper)
    global.custom_palette = 0;
    global.shaders = true; // Can we use shaders?

 // Fonts:
    global.main_font       = font_add_sprite(font_main, ord("!"), true , 1);
    global.lives_font      = font_add_sprite(font_lives, ord("0"), false, 0);
    global.hud_font        = font_add_sprite(font_hud_numbers, ord("0"), false, 0);
    global.big_numbers        = font_add_sprite(font_big_numbers, ord("0"), false, 0);
    global.title_card      = font_add_sprite(font_title_card, ord("A"), true , 0);   
    global.dataselect_font = font_add_sprite(spr_dataselect_font, ord("0"), false, 0); 
    global.small_font       = font_add_sprite(font_chat, ord("!"), true , 1);
    global.fnt_textbox    = font_add_sprite(font_textbox, ord("!"), true, 1);
      
 // Misc.
    global.last_monitor_frame = 0; // Used for destroyed monitor graphics. 
    
 // Bonus Stages    
    global.bonus_stage = false;
    global.returning_from_bonus = false;
    global.player_shield = 0;
     
 // Keyboard input:
    global.key_up           = vk_up;
    global.key_down         = vk_down;
    global.key_left         = vk_left;
    global.key_right        = vk_right;
    global.key_action       = ord("Z");
    global.key_special      = ord("X");
    global.key_specialB      = ord("C");
    global.key_specialC      = ord("S");
    global.key_enter        = vk_enter;
 
 // Gamepad input:
    global.gmp_enabled      = false;
    global.gmp_action       = 0;
    global.gmp_special      = 0;
    global.gmp_specialB      = 0;
    global.gmp_specialC      = 0;
    global.gmp_enter        = 0;
 
 // Zone / Data related:
    global.player_name = "GUEST";
    global.player_id        = 1;             // Player id.
    global.player_rings     = 20;            // Current amount of rings.
    global.player_score     = 0;             // Current score.
    global.player_score_mtp = 0;             // Current score multiplier (when defeating enemies)
    global.player_continues = 0;             // Current amount of continues.
    global.player_lives     = 3;             // Current amount of lives.
    global.player_emeralds  = 0;             // Current amount of chaos emeralds.
    global.player_tokens    = 0;             // Amount of Tokens
    global.player_cash      = 0;             // Total Cash
    global.player_badniks   = 0;             // Badniks the Player Destroyed
    global.player_flickies  = 0;             // Flickies the Player Collected
    global.exit_id          = 0;             // Exit.
    
    global.cpu              = 0;             // CPU id.
    global.do_time          = 0;             // Increases in game timers if enabled.
    global.game_time        = 0;             // Main game time.
    global.object_time      = 0;             // Seperate timer for objects- 
    global.game_paused      = 0;             // Is the game paused (Unused)
    global.time_over        = 1;             // Got a time over? (Unused)
    global.player_rings_100 = 1;             // Used to properly gain 100 rings.
    global.zone_id          = 0;             // ID of the current zone, used for data selects.
    global.death_height     = -1;            // Position that kills the player.
    global.checkpoint_x     = -1;            // Position used after respawning.
    global.checkpoint_y     = -1;            // Position used after respawning.
    global.checkpoint_t     = 0;             // Time used after respawning.
    global.water_position   = -1;            // Position of the water surface.
    global.game_completed   = 0;             // Have we completed the game?
    global.first_zone       = rm_playground; // The first zone in the game. See obj_dataselect_slot/_small and obj_fade_newgame()
    global.previous_room    = -1;            // Returns the previous room.
    global.played_time = 0; // Seconds Played
    
 // XP 
    global.level = 1;
    global.xp = 0;
    global.points = 0;  
             
 // Rendering:
    global.screen_scale     = 1;   // The screen scale value.
    global.screen_width     = 480; // The screen width.
    global.screen_height    = 270; // The screen height.
    global.angle_mode       = 1;   // How to rotate the player. (0 for classic, 1 for smooth)
       
 // Special Stages:
    global.special              = 0;    //This will be used for the controller object to count down when in a special stage     
    global.coming_from_special  = 0;
    global.ss_rings             = 0;
    global.used_emerald_1       = false;
    global.used_emerald_2       = false;
    global.used_emerald_3       = false;
    global.used_emerald_4       = false;
    global.used_emerald_5       = false;
    global.used_emerald_6       = false; 
    global.used_emerald_7       = false;
     
 // Sounds:
    global.bgm_id         = 0;     // Used to store the zone bgm. Unused.
    global.bgm_volume     = 1;     // The volume used for music.
    global.bgm_pitch      = 1;     // The pitch used for music. Unused.
    global.sfx_volume     = 1;     // The volume used for sound effects. 
    global.ring_sound     = 1;     // Used to properly play the ring sound.
   
 // Load save slots:
    global.save_selected  = 1;     // The save slot we're currently using.
    save_load()
    
    // Check name
        if global.player_name = "GUEST"
        {
            global.player_name = string_replace(environment_get_variable("USERNAME"), " ", "_")
            save_create();
        }
    
    // Our device can't handle shaders, so deactivate them:
      if(!shader_is_compiled(shd_pal_swapper)){
          global.shaders = false;
      }
  
 // Screen size.
    window_center();
