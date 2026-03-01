if instance_exists(oPlayer)
{
	if distance_to_object(oPlayer) < 100
	{
		rock_speed = 2;
		move_towards_point(oPlayer.x, oPlayer.y, rock_speed)
	}
	else
	{
		rock_speed = 0;
	}
	
	if(rock_health <= 0)
	{
		instance_destroy();
	}
}
