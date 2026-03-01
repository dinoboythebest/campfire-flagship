
var choice = attack_mode[irandom(array_length(attack_mode) - 1)];
instance_find(oPlayer, 0);


if (gamble_moveset && alarm[0] == 300) 
{ 
	alarm[0] = 60; choice = attack_mode[irandom(array_length(attack_mode) - 1)];
}


if(choice == 0)
{
   if (instance_exists(oPlayer))
   {
	   var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
	   if (dist > 25) { move_towards_point(oPlayer.x, oPlayer.y, 10);
   }
   else 
   {
	   speed = 0; 
	   
	   } }
}

if(choice == 1)
{
	instance_create_depth(oPlayer.x -10, oPlayer.y + 10, depth, oOreEnemy)
}

if(choice == 2)
{
	angle += 4;
	var radius = 200; 
	x = oPlayer.x + lengthdir_x(radius, angle);
	y = oPlayer.y + lengthdir_y(radius, angle);
}


