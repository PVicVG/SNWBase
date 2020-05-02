///scr_return_character_name(value)
/// Returns an ID's character.

// Default.
var n;
n = "(None)";

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

// Return Value.
return string(n);
