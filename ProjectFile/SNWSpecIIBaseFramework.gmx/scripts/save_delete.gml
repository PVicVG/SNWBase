/// save_delete()
 // Deletes the save load with the given id.
    
 // Check if the save exists and delete it. Otherwise return false.   
    if(file_exists(working_directory+"\data\save\data01.sav"))
    { 
       file_delete(working_directory+"\data\save\data01.sav")
    }
    
    if(file_exists(working_directory+"\data\save\object_save.bin"))
    { 
       file_delete(working_directory+"\data\save\object_save.bin")
    }
      
