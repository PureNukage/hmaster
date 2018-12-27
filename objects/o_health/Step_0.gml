/// Add or subtract from the health
// Add
if (keyboard_check_pressed(vk_up)) {
    hp++;
}

// Subtract
if (keyboard_check_pressed(vk_down)) {
    hp--;
}

//Set minimum and max health
hp = clamp(hp, 0, maxhp);


//Game Restart


