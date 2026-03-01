x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

if keyboard_check(vk_shift)
{
	alarm[0] = 60;
	if move_stamina != 0 and move_sprintdone = false
	{
		move_stamina -= 1;
		move_speed = 6;
		
		
	}
    if move_stamina >= 0
	{
		move_sprintdone = true;
	}
	
	if move_sprintdone == true
	{
		move_stamina += 1;
		move_speed  = 3;
		if move_stamina = 100
		{
			move_sprintdone = false;
		}
	}
	
}

move_and_collide(x_input * move_speed, y_input * move_speed, oWallvert);