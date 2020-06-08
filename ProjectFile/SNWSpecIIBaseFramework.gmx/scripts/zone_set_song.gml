/// zone_set_song(song, set type)
/// song -> The song that will be played
/// set type -> The method of setting the song.

// Type 0 - Loops
    if (argument1 == 0)
    {
        zone_bgm = argument0;
        if(audio_is_playing(zone_bgm) == false)
        {
            aud_play_music(zone_bgm, global.bgm_volume, 1);
        }
    }
    
// Type 1 - Plays an Audio.
    if (argument1 == 1)
    {
        zone_bgm = -1;
        aud_play_sound(argument0, global.bgm_volume, 1, 0, 0);
    }


