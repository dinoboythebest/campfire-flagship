radius=100;
angle=0;

var player = instance_find(oPlayer, 0);

if distance_to_object(oPlayer) < 500
{
	follow_speed = 3;
	move_towards_point(oPlayer.x, oPlayer.y, follow_speed)
}





