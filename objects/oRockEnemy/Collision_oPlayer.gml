
if (!instance_exists(oJumpscareRock)) {
    instance_create_depth(0, 0, -9999, oJumpscareRock);
	

    

    instance_destroy(); 
}

with(oPlayer) {
	

	if(alarm[0] <= 60)
	{
		player_health -= 1;
		alarm[0] = 60;
		
	}
	
    speed = 0;
    Follow_speed = 0; }