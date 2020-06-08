///apply_player_pal()

var pla_ind;
pla_ind = global.player_id;

if instance_exists(obj_player)
{
    pla_ind = obj_player.player_index;
}

    if (global.custom_palette >= 0)
        {
            pal_swap_set(spr_player_palettes, floor(scr_return_character_palette(pla_ind)), false);
        }
        else
        {
            pal_swap_set(spr_player_custom_palettes, floor(scr_return_character_palette(pla_ind)), false);
        }
