/// player_collision_check(COL_?, ARGUMENTS);
 // Checks various sensors for collision detecting.
 
 // Main sensor:
    if(argument0 == COL_MAIN)
    {        
    // Store mask as a temporal variable.
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.       
       mask_index = MASK_MAIN;
    
    // Test collision:
       var colTest;
       colTest = player_collision(floor(argument1), floor(argument2), collision_layer);
       
    // Restore previous mask.
       mask_index = maskTemp;
       
    // Return test:      
       return colTest;     
    }
    
 // ########################################################################################################################## //
 
 // Slope sensor:
    if(argument0 == COL_SLOPE)
    {    
    // Store mask as a temporal variable.    
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument1;
    
    // Test collision:    
       var colTest;
       colTest = player_collision(floor(argument2 + dsin(argument4)*23),
                                  floor(argument3 + dcos(argument4)*23),
                                  collision_layer); 
       
    // Restore previous mask.
       mask_index = maskTemp;
                     
    // Return test:      
       return colTest;    
    }    
    
 // ########################################################################################################################## //
 
 // Main sensor (Objects):
    if(argument0 == COL_MAIN_OBJECT)
    {    
    // Store mask as a temporal variable.    
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = MASK_MAIN;
    
    // Test collision:    
       var colTest;
       colTest = instance_place(floor(argument1), floor(argument2), argument3);
       
    // Restore previous mask.
       mask_index = maskTemp;
                     
    // Return test:      
       return colTest;    
    }    

 // ########################################################################################################################## //
 
 // Top sensor:
    if(argument0 == COL_TOP)
    { 
    // Store mask as a temporal variable.            
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.       
       mask_index = argument1;
    
    // Test collision:         
       var colTest;
       colTest = player_collision(floor(argument2 - dsin(argument4)*11),
                                  floor(argument3 - dcos(argument4)*11),
                                  collision_layer); 
       
    // Restore previous mask.                                  
       mask_index = maskTemp;                      
                   
    // Return test:                                     
       return colTest;                               
    }

 // ########################################################################################################################## //
 
 // Top sensor (Object):
    if(argument0 == COL_TOP_OBJECT)
    {   
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.        
       mask_index = argument1;
    
    // Test collision:               
       var colTest;
       colTest = instance_place(floor(argument2 - (dsin(argument4))*11),
                                floor(argument3 - (dcos(argument4))*11),
                                argument5); 
       
    // Restore previous mask.                                
       mask_index = maskTemp;
                                       
    // Return test:                               
       return colTest;
    } 

 // ########################################################################################################################## //
 
 // Bottom sensor:
    if(argument0 == COL_BOTTOM)
    {   
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument1;
    
    // Test collision:         
       var colTest;
       colTest = player_collision(floor(argument2 + dsin(argument4)*11),
                                  floor(argument3 + dcos(argument4)*11),
                                  collision_layer);
       
       if(!colTest && !ground && y_speed >= 0)
       {
          colTest = place_meeting(floor(argument2 + dsin(argument4)*11),
                                  floor(argument3 + dcos(argument4)*11),
                                  par_platform)
          &&      ! place_meeting(floor(argument2), floor(argument3),
                                  par_platform);
       }
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    }     

 // ########################################################################################################################## //
 
 // Bottom sensor (Object):
    if(argument0 == COL_BOTTOM_OBJECT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
    // Switch mask.           
       mask_index = argument1;
    
    // Test collision:         
       var colTest;
       colTest = instance_place(floor(argument2 + (dsin(argument4))*11),
                                floor(argument3 + (dcos(argument4))*11),
                                argument5); 
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    }     

 // ########################################################################################################################## //
 
 // Left sensor:
    if(argument0 == COL_LEFT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument1;
    
    // Test collision:       
       var colTest;
       colTest = player_collision(floor(argument2 - dcos(argument4)*11),
                                  floor(argument3 + dsin(argument4)*11),
                                  collision_layer);
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    }   

 // ########################################################################################################################## //
 
 // Left sensor (Object):
    if(argument0 == COL_LEFT_OBJECT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument1;
    
    // Test collision:       
       colTest = instance_place(floor(argument2 - (dcos(argument4))*11),
                                floor(argument3 + (dsin(argument4))*11),
                                argument5);
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    } 
    
 // ########################################################################################################################## //
 
 // Left sensor (Edge):
    if(argument0 == COL_LEFT_EDGE)
    {
    // Store mask and sprite as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
       var spriteTemp;
       spriteTemp[0] = sprite_index;
       spriteTemp[1] = image_index;
       
    // Switch mask and sprite.
       mask_index   = MASK_LINES;
       sprite_index = MASK_LINES;
       image_index  = floor(argument3);
     
    // Test collision:                                                 
       var colTest;
       colTest = player_collision(floor(argument1 - dcos(argument3)* 8 + dsin(argument3)*11),
                                  floor(argument2 + dsin(argument3)*11 + dcos(argument3)*11),
                                  collision_layer);
       
    // Restore previous mask and sprite.        
       mask_index   = maskTemp;
       sprite_index = spriteTemp[0];
       image_index  = spriteTemp[1];
        
    // Return test:                               
       return colTest;   
    }       
    
 // ########################################################################################################################## //
 
 // Left sensor (Limiter):
    if(argument0 == COL_LEFT_LIMITER)
    {                                
    // Store mask and sprite as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
       var spriteTemp;
       spriteTemp[0] = sprite_index;
       spriteTemp[1] = image_index;
              
    // Wrap angle.
       while(argument1 < 0)
       {
             argument1 += 360;
       }
       while(argument1 >= 360)
       {
             argument1 -= 360;
       }       
                 
    // Switch mask and sprite.
       mask_index   = MASK_LINES;
       sprite_index = MASK_LINES;
       image_index  = floor(argument1/10);
       
    // Calculate position:
       var tempOffsetX;
       tempOffsetX = x-cos(floor(argument1))*8+sin(floor(argument1))*10;
       var tempOffsetY;
       tempOffsetY = y+sin(floor(argument1))*8+cos(floor(argument1))*10;        
     
    // Test collision:                                                 
       var colTest;
       colTest = player_collision(tempOffsetX, tempOffsetY, par_solid)
       &&      ! place_meeting(tempOffsetX, tempOffsetY, par_obstacle);       
       
    // Restore previous mask and sprite.        
       mask_index   = maskTemp;
       sprite_index = spriteTemp[0];
       image_index  = spriteTemp[1];
        
    // Return test:                               
       return colTest;              
    }   
        
 // ########################################################################################################################## //
 
 // Right sensor:
    if(argument0 == COL_RIGHT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument1;
    
    // Test collision:       
       var colTest;
       colTest = player_collision(floor(argument2 + dcos(argument4)*11),
                                  floor(argument3 - dsin(argument4)*11),
                                  collision_layer);
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    }   

 // ########################################################################################################################## //
 
 // Right sensor (Object):
    if(argument0 == COL_RIGHT_OBJECT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument1;
    
    // Test collision:       
       colTest = instance_place(floor(argument2 + dcos(argument4)*11),
                                floor(argument3 - dsin(argument4)*11),
                                argument5);
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    } 
    
 // ########################################################################################################################## //
 
 // Right sensor (Edge):
    if(argument0 == COL_RIGHT_EDGE)
    {
    // Store mask and sprite as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
       var spriteTemp;
       spriteTemp[0] = sprite_index;
       spriteTemp[1] = image_index;
       
    // Switch mask and sprite.
       mask_index   = MASK_LINES;
       sprite_index = MASK_LINES;
       image_index  = floor(argument3)           
     
    // Test collision:                                                 
       var colTest;
       colTest = player_collision(floor(argument1 + dcos(argument3)* 8 + dsin(argument3)*11),
                                  floor(argument2 - dsin(argument3)*11 + dcos(argument3)*11),
                                  collision_layer);
       
    // Restore previous mask and sprite.        
       mask_index   = maskTemp;
       sprite_index = spriteTemp[0];
       image_index  = spriteTemp[1];
        
    // Return test:                               
        return colTest;    
    }       
    
 // ########################################################################################################################## //
 
 // Right sensor (Limiter):
    if(argument0 == COL_RIGHT_LIMITER)
    {                                
    // Store mask and sprite as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
       var spriteTemp;
       spriteTemp[0] = sprite_index;
       spriteTemp[1] = image_index;
              
    // Wrap angle.
       while(argument1 < 0)
       {
             argument1 += 360;
       }
       while(argument1 >= 360)
       {
             argument1 -= 360;
       }       
              
    // Switch mask and sprite.
       mask_index   = MASK_LINES;
       sprite_index = MASK_LINES;
       image_index  = floor(argument1/10);

    // Calculate position:
       var tempOffsetX;
       tempOffsetX = x+cos(floor(argument1))*8+sin(floor(argument1))*10;
       var tempOffsetY;
       tempOffsetY = y-sin(floor(argument1))*8+cos(floor(argument1))*10;        
     
    // Test collision:                                                 
       var colTest;
       colTest = player_collision(tempOffsetX, tempOffsetY, par_solid)
       &&      ! place_meeting(tempOffsetX, tempOffsetY, par_obstacle);       
       
    // Restore previous mask and sprite.        
       mask_index   = maskTemp;
       sprite_index = spriteTemp[0];
       image_index  = spriteTemp[1];
        
    // Return test:                               
       return colTest;              
    }              

