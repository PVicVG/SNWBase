/// save_create();
 // Creates a save file for this engine. Load using save_load(slot)
 // Since we can only store inis in the same folder as the game executable, we'll use text file instead.
 
 // Add a zero in front argument0 if it's less than 10.
       global.save_selected  = 1;

 // Store data:
    {
       // Encryption key:
          var dkey;
          dkey = $4ad682aeb7218;
       // Open save:
          var dfile;
          dfile = file_text_open_write(working_directory+"\data\save\data01.sav");
       
       // Warning:
          file_text_write_string(dfile, ""+string(GAME_NAME)+" Save Data - Editing this file can cause issues.");
          file_text_writeln(dfile);
             
       // Emeralds
          file_text_write_string(dfile, string(global.player_emeralds^dkey));
          file_text_writeln(dfile);            
       
       // Character:
          file_text_write_string(dfile, string(global.player_id^dkey));
          file_text_writeln(dfile); 
       
       // Game completed:
          file_text_write_string(dfile, string(global.game_completed^dkey));
          file_text_writeln(dfile);   
       
       // Score:
          file_text_write_string(dfile, string(global.player_score^dkey));
          file_text_writeln(dfile);               
       
       // XP:
          file_text_write_string(dfile, string(global.xp));
          file_text_writeln(dfile);      
          
       // Level:
          file_text_write_string(dfile, string(global.level^dkey));
          file_text_writeln(dfile);
          
       // Played Time:
          file_text_write_string(dfile, string(global.played_time^dkey));
          file_text_writeln(dfile);
          
       // Tokens:
          file_text_write_string(dfile, string(global.player_tokens^dkey));
          file_text_writeln(dfile);
          
       // Cash:
          file_text_write_string(dfile, string(global.player_cash^dkey));
          file_text_writeln(dfile);
       
       // Name:
          file_text_write_string(dfile, string(global.player_name));
          file_text_writeln(dfile);   
          
       // Palette:
          file_text_write_string(dfile, string(global.custom_palette^dkey));
          file_text_writeln(dfile); 
                    
       // Display
          instance_create(0, 0, obj_saving);   
       
       // Close.                  
          file_text_close(dfile);
    }

