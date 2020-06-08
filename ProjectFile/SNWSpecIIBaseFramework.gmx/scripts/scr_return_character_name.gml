///scr_return_character_name(value)
/// Returns an ID's character.

// Default.
    var n;
    n = "None ("+ string(argument0)+")";

// Characters.
    if (argument0 == CHAR_SONIC) {
        n = "Sonic"
    }
    
    if (argument0 == CHAR_TAILS) {
        n = "Tails"
    }
    
    if (argument0 == CHAR_KNUCKLES) {
        n = "Knuckles";
    }

    if (argument0 == CHAR_FANG) {
        n = "Fang";
    }
    
    if (argument0 == CHAR_EGGROBO) {
        n = "EggRobo";
    }
    
    if (argument0 == CHAR_MODERN) {
        n = "Modern";
    }
    
    if (argument0 == CHAR_MIGHTY) {
        n = "Mighty";
    }
    
    if (argument0 == CHAR_SHADOW) {
        n = "Shadow";
    }
    
    if (argument0 == CHAR_AMY) {
        n = "Amy";
    }
    
    if (argument0 == CHAR_PINGU) {
        n = "Pingu";
    }
    
// Return Value.
    return string(n);

