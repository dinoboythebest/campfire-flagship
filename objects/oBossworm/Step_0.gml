// --- 1. SETUP TARGETS ---
var target = instance_find(oPlayer, 0);

// --- 2. PICKING ATTACKS (ALARM 0) ---
if (gamble_moveset && alarm[0] <= 0) 
{ 
    choice = attack_mode[irandom(array_length(attack_mode) - 1)];
    alarm[0] = 180; 
}

// --- 3. EXECUTING ATTACKS (SLOW) ---
if (instance_exists(target)) 
{
    if (choice == "charge") 
    {
        move_towards_point(target.x, target.y, move_speed);
    }

    if (choice == "spawn") 
    {
        speed = 0; 
        if (irandom(100) > 98) {
            instance_create_depth(target.x, target.y, depth, oOreEnemy);
        }
    }

    if (choice == "rampage") 
    {
        speed = 0; 
        angle += 1.5; 
        var radius = 180; 
        x = target.x + lengthdir_x(radius, angle);
        y = target.y + lengthdir_y(radius, angle);
    }
}

// --- 4. PLAYER HITTING BOSS (KEY: Z | RANGE: 50) ---
if (instance_exists(target))
{
    var dist_to_player = point_distance(x, y, target.x, target.y);
    
    // Changed ord("E") to ord("Z")
    if (dist_to_player <= 50 && keyboard_check_pressed(ord("Z")))
    {
        boss_hp -= 10;
        image_blend = c_red; 
        alarm[1] = 5;        
        
        if (boss_hp <= 0) instance_destroy(); 
    }
}

// --- 5. BOSS HITTING PLAYER ---
if (instance_exists(target) && place_meeting(x, y, target)) 
{
    if (target.can_be_hit) 
    {
        target.player_health -= 1; 
        target.can_be_hit = false;
        target.alarm[0] = 60; 
        
        target.image_blend = c_red; 
        var dir = point_direction(x, y, target.x, target.y);
        target.x += lengthdir_x(12, dir); 
        target.y += lengthdir_y(12, dir);
    }
}