scr_getinputs();
scr_menu_controls();


speed = 0
image_speed = 0
sprite_index = s_player_grab

if keyboard_check_pressed(vk_space){
    x += 10
    zland[0] += 10
    y -= 10
    zland[1] -= 10
    playerstates = playerstates.normal
}
