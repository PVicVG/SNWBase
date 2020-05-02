/// save_load(slot);
 // Loads the save slot with the given id.
 
 // Add a zero in front argument0 if it's less than 10.
    if(argument0 < 10)
    {
       argument0 = "0"+string(argument0);
    }
    
 // If the save does not exist, exit.    
    if(file_exists(working_directory+"\data\save\data"+string(argument0)+".sav") == false)
    {
       return false;
    }
    
 // Load data:
    if(file_exists(working_directory+"\data\save\data"+string(argument0)+".sav") == true)
    {
       // Decryption key:
          var dkey;
          dkey = $4ad682aeb7218;
       // Open save:
          var dfile;
          dfile = file_text_open_read(working_directory+"\data\save\data"+string(argument0)+".sav");
       // Skip Warning:
          file_text_readln(dfile);
       // Zone:
          var zoneVal;
          zoneVal        = file_text_read_real(dfile);
          global.zone_id = (dkey ^ zoneVal);
          file_text_readln(dfile);
       // Lives:
          var lifeVal;
          lifeVal             = file_text_read_real(dfile);
          global.player_lives = (dkey ^ lifeVal);
          file_text_readln(dfile);  
       // Continues:
          var continueVal;
          continueVal             = file_text_read_real(dfile);
          global.player_continues = (dkey ^ continueVal);
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
       // Character (CPU):
          var cpuVal;
          cpuVal     = file_text_read_real(dfile);
          global.cpu = (dkey ^ cpuVal);
          file_text_readln(dfile);    
       // Game completed:
          var gameVal;
          gameVal               = file_text_read_real(dfile);
          global.game_completed = (dkey ^ gameVal);
          file_text_readln(dfile);                   
       // Close.                  
          file_text_close(dfile);
          
       // Return 1.
          return true;
    }
