var player = instance_find(oPlayer, 0);
var max_allowed_distance_to_player = 5;
follow_speed = 5;

var distance_to_player = point_distance(x, y, oPlayer.x, oPlayer.y)

if(distance_to_player > max_allowed_distance_to_player)
{
	var direction_to_player = point_direction(x, y, player.x, player.y);
	
	var to_move = min(follow_speed, distance_to_player);
	
	x += lengthdir_x(to_move, direction_to_player);
    y += lengthdir_y(to_move, direction_to_player);

}