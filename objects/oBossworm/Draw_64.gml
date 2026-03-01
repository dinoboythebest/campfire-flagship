


var bw = 400;        
var bh = 20;           
var bx = (display_get_gui_width() / 2) - (bw / 2); 
var by = 50;           

var amount = (boss_hp / boss_hp_max) * 100;

draw_set_color(c_dkgray);
draw_rectangle(bx, by, bx + bw, by + bh, false);

draw_set_color(c_red);
draw_healthbar(bx, by, bx + bw, by + bh, amount, c_black, c_red, c_lime, 0, true, true);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(display_get_gui_width() / 2, by - 25, "THE ANCIENT ORE-WORM");