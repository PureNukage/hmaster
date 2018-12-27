if (global.pause)
{
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(0,0,room_width,room_height,0);
    draw_set_halign(fa_center);
    draw_set_font(fnt_menu);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_text(__view_get( e__VW.XView, 0 ) + 340, __view_get( e__VW.YView, 0 ) + 160, string_hash_to_newline("Game Paused"));
    draw_set_color(c_black);


}

