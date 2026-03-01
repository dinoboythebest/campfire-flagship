
draw_self();


var _x = 30;        
var _y = 30;       
var _width = 200;   
var _height = 25;   


var _health_percent = player_health / 10;


draw_set_color(c_dkgray);
draw_rectangle(_x, _y, _x + _width, _y + _height, false);


draw_set_color(c_lime);
draw_rectangle(_x, _y, _x + (_width * _health_percent), _y + _height, false);


draw_set_color(c_white);
draw_rectangle(_x, _y, _x + _width, _y + _height, true);
