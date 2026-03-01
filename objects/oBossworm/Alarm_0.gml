if (instance_exists(oPlayer)) { var dist = point_distance(x, y, oPlayer.x, oPlayer.y); if (dist > 25) { move_towards_point(oPlayer.x, oPlayer.y, 10); } else { speed = 0; } }

current_attack = attack_mode[irandom(array_length(attack_mode) - 1)];


alarm[0] = 180;