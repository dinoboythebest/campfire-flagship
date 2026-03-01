if instance_exists(oPlayer)
{
	if distance_to_object(oPlayer) < 25
	{
		follow_speed = 10;
		move_towards_point(oPlayer.x, oPlayer.y, follow_speed)
	}
	else
	{
		follow_speed = 0;
	}
}