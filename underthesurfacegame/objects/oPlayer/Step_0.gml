x_input = keyboard_check(vk_left) - keyboard_check(vk_right);
y_input = keyboard_check(vk_up) - keyboard_check(vk_down);


move_and_collide(x_input * move_speed, y_input * move_speed, //add the collision object tamilore);