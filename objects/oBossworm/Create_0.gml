var player = instance_find(oPlayer, 0);

if distance_to_object(oPlayer) < 1000
{
	follow_speed = 3;
	move_towards_point(oPlayer.x, oPlayer.y, follow_speed)
}




if distance_to_object(oPlayer) < 300
	{
		repeat(5)
		{
				instance_create_layer(x, y, "sOreEnemy", oOreEnemy);
		}

	}

