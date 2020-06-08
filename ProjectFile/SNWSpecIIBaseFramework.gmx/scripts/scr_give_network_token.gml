///scr_give_network_token("type")

                           
// Create Star Effects at Player Position
scr_create_smoke(obj_player.x, obj_player.y, spr_star_sparkles)

// Play Sound
aud_play_simple(mission_finish);

// Create Token
var t;
t = instance_create(x, y, obj_network_token);
t.type = argument0;
