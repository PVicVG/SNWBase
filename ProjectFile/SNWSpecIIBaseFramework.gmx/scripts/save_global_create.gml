/// save_global_create()
 // Creates a save file containing settings.
 
 // Open/Create ini.
    ini_open("settings.bin");
    {
       ini_write_real("Display",   "Scale",      global.screen_scale);
       ini_write_real("Audio", "BGMVolume",      global.bgm_volume);       
       ini_write_real("Audio", "SFXVolume",      global.sfx_volume);          
       ini_write_real("Keyboard",  "KeyUp",      global.key_up);        
       ini_write_real("Keyboard",  "KeyDown",    global.key_down); 
       ini_write_real("Keyboard",  "KeyLeft",    global.key_left);     
       ini_write_real("Keyboard",  "KeyRight",   global.key_right);      
       ini_write_real("Keyboard",  "KeyAction",  global.key_action);  
       ini_write_real("Keyboard",  "KeySpecial", global.key_special);
       ini_write_real("Keyboard",  "KeySpecialB", global.key_specialB);
       ini_write_real("Keyboard",  "KeySpecialC", global.key_specialC);
       ini_write_real("Keyboard",  "KeyEnter",   global.key_enter);           
       ini_write_real("Gamepad",  "GMPAction",   global.gmp_action);  
       ini_write_real("Gamepad",  "GMPSpecial",  global.gmp_special);
       ini_write_real("Gamepad",  "GMPEnter",    global.gmp_enter);                                 
    }
    ini_close()

 // Set volume.
    SFX.zone_my_bgm_volume = global.bgm_volume;
    SFX.zone_my_sfx_volume = global.sfx_volume;
    
 // Set screen resolution.
    if(global.screen_scale != 4)
    {
       if(window_get_fullscreen() == true)
       {
          window_set_fullscreen(false);
       }
       window_set_size(global.screen_width*global.screen_scale, global.screen_height*global.screen_scale);
       window_center();     
       obj_screen_controller.alarm[0] = 1;        
    }
    else
    { 
       window_set_fullscreen(true);
       window_set_size(global.screen_width, global.screen_height);   
       window_center();      
       obj_screen_controller.alarm[0] = 1;                     
    }    
