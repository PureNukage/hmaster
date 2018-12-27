if keyboard_check(vk_right){
    global.rage += 1
}
if keyboard_check(vk_left){
    global.rage -= 1
}


global.rage = clamp(global.rage,0,100)


