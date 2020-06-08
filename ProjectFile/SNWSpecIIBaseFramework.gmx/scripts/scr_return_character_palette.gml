///scr_return_character_palette(Character)
/// Returns an ID's character.

// Default.
    var n;
    n = argument0;

// Characters.
    if (global.custom_palette != 0)
    {
        n = abs(global.custom_palette);
    }
    
// Return Value.
    return n;

