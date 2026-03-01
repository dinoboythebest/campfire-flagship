// 1. Make sure the player character still draws!
draw_self();

// 2. Set the position and size of the bar
var _x = 30;        // 30 pixels from the left
var _y = 30;        // 30 pixels from the top
var _width = 200;   // The total length of the bar
var _height = 25;   // The thickness of the bar

// 3. Calculate the percentage (Current Health / Max Health)
// Since max is 10, if you have 5 health, this equals 0.5 (50%)
var _health_percent = player_health / 10;

// 4. Draw the Background (Dark Gray)
draw_set_color(c_dkgray);
draw_rectangle(_x, _y, _x + _width, _y + _height, false);

// 5. Draw the Health (Green)
// We multiply width by the percentage to decide where the bar ends
draw_set_color(c_lime);
draw_rectangle(_x, _y, _x + (_width * _health_percent), _y + _height, false);

// 6. Draw the Border (White outline)
draw_set_color(c_white);
draw_rectangle(_x, _y, _x + _width, _y + _height, true);
