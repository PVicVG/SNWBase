///collectable_check("CLASS", "name");
    // Check data
        ini_open(working_directory + "\data\save\object_save.bin")
        {
            var exists = ini_read_real(argument0, string_lower(argument0) + "_" + string_replace(argument1, " ", "_"),0); 
        }
        ini_close()
    
    // Setup if it's collected.
        if (exists == 0)
        {
            collected = false;
        }
        else
        {
            collected = true;
        }
