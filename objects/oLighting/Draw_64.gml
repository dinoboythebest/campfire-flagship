// 1. Get the size of the GUI (your screen)
var _guiW = display_get_gui_width();
var _guiH = display_get_gui_height();

// 2. Create the surface if it's missing
if (!surface_exists(surf)) {
    surf = surface_create(_guiW, _guiH);
}

// 3. Start drawing to the darkness surface
surface_set_target(surf);
draw_clear_alpha(c_black, 1.0); // Fill screen with black

// 4. Draw the hole ONLY if the player exists
if (instance_exists(oPlayer)) {
    gpu_set_blendmode(bm_subtract);
    
    // THE FIX: Convert the Player's Room Position to Screen Position
    var _screenX = oPlayer.x - camera_get_view_x(view_camera[0]);
    var _screenY = oPlayer.y - camera_get_view_y(view_camera[0]);
    
    // Draw the circle at the SCREEN position
    // 100 is the size, change it if you want it smaller/bigger
    draw_circle_color(_screenX, _screenY, 100, c_white, c_black, false);
    
    gpu_set_blendmode(bm_normal);
}

surface_reset_target();

// 5. Draw the surface at 0,0 of the GUI
draw_surface(surf, 0, 0);