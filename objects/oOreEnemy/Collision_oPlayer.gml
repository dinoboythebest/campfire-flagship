
if (other.can_be_hit == true) {
    other.player_health -= 1;
    
 
    instance_create_depth(0, 0, -10000, oJumpscareOre);

    other.can_be_hit = false;
    other.alarm[0] = 60; 
}
