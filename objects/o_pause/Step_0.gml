if keyboard_check_pressed(vk_f4) || gamepad_button_check_pressed(0,gp_start) {
    if (global.pause == 0)
    {
        global.pause = 1;
    }
    else
    {
        global.pause = 0;
    }
}

