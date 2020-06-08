/// aud_play_music(audio id, audio volume, audio pitch);
 // Script to play music.

    global.bgm_id = audio_play_sound(argument0, 1, true);
                    audio_sound_gain(global.bgm_id, argument1, 0);
                    if(argument2 != -1){
                       if(argument2 < 0) { argument2 = 0 }
                       audio_sound_pitch(global.bgm_id, argument2);
                    }                         

