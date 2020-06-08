///draw_option(option_number, "string")

draw_sprite(spr_pause_button, option_highlighted[argument0], view_xview[0] + pause_offset + 265 + (11 * argument0), view_yview[0] + 39 + (argument0 * 48))
draw_set_halign(fa_left)
draw_text(view_xview[0] + pause_offset + 276 + (11 * argument0), view_yview[0] + 39 + (argument0 * 48), argument1)
