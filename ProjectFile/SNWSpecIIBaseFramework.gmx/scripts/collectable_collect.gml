///collectable_collect("CLASS", "name");
    // Write.
    ini_open(working_directory + "\data\save\object_save.bin")
    {
        ini_write_real(argument0, string_lower(argument0) + "_" +string_replace(argument1, " ", "_"), 1); 
    }
    ini_close()
