// Check if a jumpscare is already happening so it doesn't spawn 100 times
if (!instance_exists(oJumpscareRock)) {
    instance_create_depth(0, 0, -9999, oJumpscareRock);
	

    
    // Optional: Destroy the rock so it doesn't hit the player again immediately
    instance_destroy(); 
}
// In the rock's collision event
with(oPlayer) {
	

	if(alarm[0] <= 60)
	{
		player_health -= 1;
		alarm[0] = 60;
		
	}
	
    speed = 0;
    Follow_speed = 0; // If you have a movement variable
}