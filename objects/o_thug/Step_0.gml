if (global.pause){
speed = 0
image_speed = 0
exit;}

switch (thugstates)
{
    case thugstates.idle: scr_thug_idle(); break;
    case thugstates.chase: scr_thug_chase(); break;
    case thugstates.queue: scr_thug_queue(); break;
    case thugstates.breather: scr_thug_breather(); break;
    case thugstates.attack: scr_thug_attack(); break;
    case thugstates.damage: scr_thug_damage(); break;
    case thugstates.killed: scr_thug_killed(); break;
    case thugstates.dead: scr_thug_dead(); break;
    
}

depth = -y


