///     scr_game_init()
///     Initializes the Main Variables.

 // Fonts:
    global.main_font       = font_add_sprite(font_main, ord("!"), true , 1);
    global.lives_font      = font_add_sprite(font_lives, ord("0"), false, 0);
    global.hud_font        = font_add_sprite(font_hud_numbers, ord("0"), false, 0);
    global.title_card      = font_add_sprite(font_title_card, ord("A"), true , 0);   
    global.dataselect_font = font_add_sprite(spr_dataselect_font, ord("0"), false, 0); 
    
 // Keyboard input:
    global.key_up           = vk_up;
    global.key_down         = vk_down;
    global.key_left         = vk_left;
    global.key_right        = vk_right;
    global.key_action       = ord("Z");
    global.key_special      = ord("X");
    global.key_enter        = vk_enter;
 
 // Gamepad input:
    global.gmp_enabled      = false;
    global.gmp_action       = 0;
    global.gmp_special      = 0;
    global.gmp_enter        = 0;
 
 // Zone / Data related:
    global.player_id        = 1;             // Player id.
    global.player_rings     = 20;            // Current amount of rings.
    global.player_score     = 0;             // Current score.
    global.player_score_mtp = 0;             // Current score multiplier (when defeating enemies)
    global.player_continues = 0;             // Current amount of continues.
    global.player_lives     = 3;             // Current amount of lives.
    global.player_emeralds  = 0;             // Current amount of chaos emeralds.
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
         
 // Rendering:
    global.screen_scale     = 1;   // The screen scale value.
    global.screen_width     = 480; // The screen width.
    global.screen_height    = 270; // The screen height.
    global.angle_mode       = 1;   // How to rotate the player. (0 for classic, 1 for smooth)
        
 // Sounds:
    global.bgm_id         = 0;     // Used to store the zone bgm. Unused.
    global.bgm_volume     = 1;     // The volume used for music.
    global.bgm_pitch      = 1;     // The pitch used for music. Unused.
    global.sfx_volume     = 1;     // The volume used for sound effects. 
    global.ring_sound     = 1;     // Used to properly play the ring sound.
   
 // Load save slots:
    global.save_selected  = 1;     // The save slot we're currently using.
    for(i=1; i<9; i+=1)
    {
        var _slot;
        _slot = save_load(i);

        if(_slot == true)
        {
           global.save_slot_zone      [i] = global.zone_id;
           global.save_slot_character [i] = global.player_id;
           global.save_slot_cpu       [i] = global.cpu;
           global.save_slot_lives     [i] = global.player_lives;           
           global.save_slot_continues [i] = global.player_continues;               
           global.save_slot_emeralds  [i] = global.player_emeralds;
           global.save_slot_completed [i] = global.game_completed;
        }        
        else
        {
           global.save_slot_zone      [i] = 0;
           global.save_slot_character [i] = 1;
           global.save_slot_cpu       [i] = 2;
           global.save_slot_lives     [i] = 3;           
           global.save_slot_continues [i] = 0;               
           global.save_slot_emeralds  [i] = 0;
           global.save_slot_completed [i] = 0;
        }        
    }
  
 // Screen size.
    window_center();
