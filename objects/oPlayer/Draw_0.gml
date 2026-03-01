draw_self();

var _width = 40;   
var _height = 5;   

var _draw_x = x - (_width / 2);
var _draw_y = y - 40; 

// FIX: This stops the stretching glitch by locking health between 0 and 10
var _health_percent = clamp(player_health, 0, 10) / 10;

draw_set_color(c_black);
draw_rectangle(_draw_x, _draw_y, _draw_x + _width, _draw_y + _height, false);

draw_set_color(c_lime);
draw_rectangle(_draw_x, _draw_y, _draw_x + (_width * _health_percent), _draw_y + _height, false);

draw_set_color(c_white);
draw_rectangle(_draw_x, _draw_y, _draw_x + _width, _draw_y + _height, true);