x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

if(!keyboard_check(vk_shift))
{
	move_speed = 2;
	
	if(sprint_empty == false)
	{
		if(move_stamina <= 10)
	   {
		sprint_empty = true;
		move_stamina += 1;
	   }
   
	}
	else
	{}
	

	move_stamina = clamp(1, 0, 10); //limits sprint to 1-10


}
else
{
	if(keyboard_check(vk_shift) and sprint_empty == true)

	{
		move_speed = 5;
		alarm[0] = 60;
		move_stamina -= 1;
		
		if(move_stamina = 0)
		{
			sprint_empty = false;
		}
		
	}
}


move_and_collide(x_input * move_speed, y_input * move_speed, oWallvert);