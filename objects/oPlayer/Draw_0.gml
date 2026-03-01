// 1. You MUST draw the player first, or they will be invisible!
draw_self();

// 2. Set the size of the bar
var _width = 40;   // How wide the bar is above the head
var _height = 5;   // How skinny the bar is

// 3. Position it relative to the player
// x - (_width / 2) centers the bar over the player's origin
// y - 40 puts it 40 pixels above their head
var _draw_x = x - (_width / 2);
var _draw_y = y - 40; 

// 4. Calculate the percentage (Health / Max)
var _health_percent = player_health / 10;

// 5. Draw the Background (Black/Gray)
draw_set_color(c_black);
draw_rectangle(_draw_x, _draw_y, _draw_x + _width, _draw_y + _height, false);

// 6. Draw the Health (Lime Green)
draw_set_color(c_lime);
draw_rectangle(_draw_x, _draw_y, _draw_x + (_width * _health_percent), _draw_y + _height, false);

// 7. Draw the Outline (White)
draw_set_color(c_white);
draw_rectangle(_draw_x, _draw_y, _draw_x + _width, _draw_y + _height, true);