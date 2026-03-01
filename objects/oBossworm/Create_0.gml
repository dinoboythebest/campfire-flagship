// oBoss Create Event
spawn_delay = 120; // 2 seconds if your game is 60fps
alarm[0] = spawn_delay;

boss_hp = 50;



if(boss_hp <= 0)
{
	instance_destroy();
}