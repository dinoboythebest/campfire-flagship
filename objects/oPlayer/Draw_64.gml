var pc;

pc = (move_stamina / player_max_stamina) * 100;


draw_healthbar(20, 250, 3000, 200, pc, c_black, c_red, c_lime, 0, true, true);