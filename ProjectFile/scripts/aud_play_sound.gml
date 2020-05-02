/// aud_play_sound(audio id, audio volume, audio pitch, loop, stop duplicate);
 // Script to play a sound.

   // If we don't want that the same audio is played twice, stop all instances of this audio:
      if(argument4 == 0){
         audio_stop_sound(argument0);
      }
      
   // Play the audio:
      if(argument3 == 0)
      {
         audio_play_sound(argument0, 1, false);
      }
      else
      {
         audio_play_sound(argument0, 1, true);
      }
      
   // Set the Volume:
      audio_sound_gain(argument0, argument1, 0);
           
   // Modify the pitch:
      if(argument2 != -1){
         if(argument2 < 0) { argument2 = 0 }
         audio_sound_pitch(argument0, argument2);
      }
      

