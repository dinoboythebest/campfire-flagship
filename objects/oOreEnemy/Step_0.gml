if (instance_exists(oPlayer))
{
   
    if (distance_to_object(oPlayer) < 300) 
    {
        var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
        var h_speed = lengthdir_x(2, dir);
        var v_speed = lengthdir_y(2, dir);

     
        if (!place_meeting(x + h_speed, y, oWall)) {
            x += h_speed;
        }
        
       
        if (!place_meeting(x, y + v_speed, oWall)) {
            y += v_speed;
        }
    }


    if (point_distance(x, y, oPlayer.x, oPlayer.y) < 50 && keyboard_check_pressed(ord("Z")))
    {
        rock_health -= 1; 
        alarm[0] = 5;        
    }


    if (rock_health <= 0)
    {
        instance_destroy();
    }
}