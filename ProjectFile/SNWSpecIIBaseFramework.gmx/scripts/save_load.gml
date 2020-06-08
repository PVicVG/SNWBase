/// save_load();
 // Loads the save slot with the given id.
 
 // Add a zero in front if it's less than 10.
    global.save_selected  = 1;
    
 // If the save does not exist, exit.    
    if(file_exists(working_directory+"\data\save\data01.sav") == false)
    {
       return false;
    }
    
 // Load data:
    if(file_exists(working_directory+"\data\save\data01.sav") == true)
    {
       // Decryption key:
          var dkey;
          dkey = $4ad682aeb7218;
       
       // Open save:
          var dfile;
          dfile = file_text_open_read(working_directory+"\data\save\data01.sav");
       
       // Skip Warning:
          file_text_readln(dfile);
             
       // Emeralds
          var emeraldVal;
          emeraldVal             = file_text_read_real(dfile);
          global.player_emeralds = (dkey ^ emeraldVal);
          file_text_readln(dfile);            
       
       // Character:
          var charVal;
          charVal          = file_text_read_real(dfile);
          global.player_id = (dkey ^ charVal);
          file_text_readln(dfile); 
       
       
       // Game completed:
          var gameVal;
          gameVal               = file_text_read_real(dfile);
          global.game_completed = (dkey ^ gameVal);
          file_text_readln(dfile);     
       
       // Score:
          var scoreVal;
          scoreVal               = file_text_read_real(dfile);
          global.player_score = (dkey ^ scoreVal);
          file_text_readln(dfile);             
          
       // XP:
          var xpVal;
          xpVal               = file_text_read_real(dfile);
          global.xp = (xpVal);
          file_text_readln(dfile);   
          
       // Level:
          var levelVal;
          levelVal               = file_text_read_real(dfile);
          global.level = (dkey ^ levelVal);
          file_text_readln(dfile);     
          
       // Played Time:
          var playedtimeVal;
          playedtimeVal               = file_text_read_real(dfile);
          global.played_time = (dkey ^ playedtimeVal);
          file_text_readln(dfile);  
       
       // Tokens:
          var tokensVal;
          tokensVal               = file_text_read_real(dfile);
          global.player_tokens = (dkey ^ tokensVal);
          file_text_readln(dfile);     
          
       // Cash:
          var cashVal;
          cashVal               = file_text_read_real(dfile);
          global.player_cash = (dkey ^ cashVal);
          file_text_readln(dfile); 
          
       // Name:
          var nameVal;
          nameVal               = file_text_read_string(dfile);
          global.player_name = (nameVal);
          file_text_readln(dfile); 
          
       // Palette:
          var palVal;
          palVal               = file_text_read_real(dfile);
          global.custom_palette = (dkey ^ palVal);
          file_text_readln(dfile); 
          
       // Close.                  
          file_text_close(dfile);
          
       // Return 1.
          return true;
    }
