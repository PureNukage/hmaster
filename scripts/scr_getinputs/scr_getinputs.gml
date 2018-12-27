up = keyboard_check(ord("W")) 
down = keyboard_check(ord("S")) 
right = keyboard_check(ord("D")) 
left = keyboard_check(ord("A"))

qpress = keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(0,gp_face3)
spacepress = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1)


escape = keyboard_check_pressed(vk_escape)
f1 = keyboard_check_pressed(vk_f1)

shield = keyboard_check(ord("X")) || gamepad_button_check(0,gp_shoulderrb)
shieldrelease = keyboard_check_released(ord("X")) || gamepad_button_check_released(0,gp_shoulderrb)

gamepad_set_axis_deadzone(0,0.1)




