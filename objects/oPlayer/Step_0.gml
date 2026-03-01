x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

if(!keyboard_check(vk_shift))
{
	show_debug_message("Testing")
	move_speed = 2;
	
	if (move_stamina < 10) 
	{
		move_stamina += 1;
	} 
	
	if (move_stamina >= 10) 
	{ 
		sprint_empty = false;
	}
	
	move_stamina = clamp(move_stamina, 0, 10);//limits sprint to 1-10


}
else
{
	
	show_debug_message("Test")
	if(keyboard_check(vk_shift) && sprint_empty == false)

	{
		move_speed = 5;
		alarm[0] = 60;
		move_stamina -= 1;
		
		if(move_stamina <= 0)
		{
			sprint_empty = true;
		}
		
	}
}



	if(player_health <= 0)
    {	 
	   game_end();
    }
	
	if x>1250 and room=Level1
	room=Level2
	
	if x>=1250 and room=Level2
	room=Level3
	
	if x>1250 and room=Level3
	room=Level4
	if x>1250 and room=Level4
	room=Level5
	if x>1250 and room=Level5
	room=Level6
	if x>1250 and room=Level6
	room=Level7
	if x>1250 and room=Level7
	room=Level8
	if x>1250 and room=Level8
	room=Level9
	if x>1250 and room=Level9
	room=Level10
	


show_debug_message(move_speed)

move_and_collide(x_input * move_speed, y_input * move_speed, oWall);