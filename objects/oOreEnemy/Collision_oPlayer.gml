// 1. Only do the scare if the player isn't currently "invincible"
if (other.can_be_hit == true) {
    
    // Take 1 damage
    other.player_health -= 1;
    
    // Trigger the jumpscare image
    instance_create_depth(0, 0, -9999, oJumpscareOre);
    
    other.can_be_hit = false;
    other.alarm[0] = 60; // Player will be safe for 1 second (60 frames)
    
    // 3. Visual feedback: Make player see-through to show they got hit
    other.image_alpha = 0.5;
}
