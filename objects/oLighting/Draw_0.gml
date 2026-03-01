// 1. If the surface was lost (or hasn't been made), create it
if (!surface_exists(surf)) {
    surf = surface_create(room_width, room_height);
}

// 2. Tell GameMaker to draw on the surface, not the screen
surface_set_target(surf);

// 3. Draw the "Darkness" (Black rectangle over everything)
draw_clear_alpha(c_black, 1.0); 

// 4. "Punch a hole" where the player is
if (instance_exists(oPlayer)) {
    gpu_set_blendmode(bm_subtract); // Switch to "Eraser" mode
    
    // Draw the light circle
    // 120 is the size. c_white erases 100%, c_black erases 0%.
    draw_circle_color(oPlayer.x, oPlayer.y, 120, c_white, c_black, false);
    
    gpu_set_blendmode(bm_normal); // Switch back to normal drawing
}

// 5. Stop drawing on the surface
surface_reset_target();

// 6. Draw the actual surface onto your game screen
draw_surface(surf, 0, 0);