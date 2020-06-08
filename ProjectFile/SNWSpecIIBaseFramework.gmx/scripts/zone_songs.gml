/// zone_songs()
/// Play stage music.
 
 // First, stop every single sound.
    audio_stop_all();
    
 // Revert the fadeout flag if it's enabled.
    fadeout_flag = false;
    zone_results = false;
    boss_flag   = false;
    temp_zone_bgm = -1;
    
 // Set the volumes.
    global.bgm_volume = zone_my_bgm_volume;
    global.sfx_volume = zone_my_sfx_volume;   
    
 // Then play the stage music.
    switch(room)
    {
           case rm_title:
           {
                zone_set_song(jingle_title, 1);
                break;
           }    
           
           case rm_savescreen:
           {
                zone_set_song(music_savescreen, 0);
                break;
           }      
           
           case rm_continue:
           {
                zone_set_song(jingle_continue, 1);
                break;
           }     
           
           case rm_data_select:
           {
                zone_set_song(music_dataselect, 0);
                break;
           }   
           
           case rm_level_select:
           {
                zone_set_song(music_levelselect, 0);
                break;
           }                                     
           
           case rm_options:
           {
                zone_set_song(music_options, 0);
                break;
           }    
           
           case rm_playground:
           {
                zone_set_song(music_test, 0);
                break;
           }
           
           case rm_playground_0:
           {
                zone_set_song(music_test, 0);
                break;
           }
           
           case rm_playground_1:
           {
                zone_set_song(music_test, 0);
                break;
           }
           
           case rm_playground_2:
           {
                zone_set_song(music_test, 0);
                break;
           }
           
           case rm_bonus_stage:
           {
                zone_set_song(music_bonusstage, 0);
                break; 
           }
           
           case rm_skyvillage:
           {
                zone_set_song(choose(music_skyvillage_1, music_skyvillage_2), 0);
                break; 
           }
           
           case rm_specialstage_1:
           {
                zone_set_song(music_specialstage, 0);
                break; 
           }
           
           default:
           {    
              zone_bgm        = -1;
              zone_bgm_backup = -1;
              break;
           }
    }
  
