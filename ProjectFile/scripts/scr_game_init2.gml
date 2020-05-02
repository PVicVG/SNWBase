///    scr_game_init2()  
///    Initializes the main Objects and loads the save data.

    instance_create(0, 0, obj_screen_controller);
    instance_create(0, 0, obj_gamepad_controller);
    instance_create(0, 0, obj_audio);
    save_global_load();


