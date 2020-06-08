///scr_fade_to(room)
if !instance_exists(obj_fade_to_value)
{
var fade = instance_create(0, 0, obj_fade_to_value);
fade.value = argument0;
}
