if (global.pause){
speed = 0
image_speed = 0
exit;}

switch (playerstates)
{
    case playerstates.normal: scr_player_normal(); break;
    case playerstates.shield: scr_player_shield(); break;
    case playerstates.jump: scr_player_jump(); break;
    case playerstates.freefall: scr_player_freefall(); break;
    case playerstates.collision: scr_collision(); break;
    case playerstates.collisionjump: scr_collision_jump(); break;
    case playerstates.ledgegrab: scr_player_ledgegrab(); break;
    case playerstates.punch1: scr_player_punch1(); break;
    case playerstates.punch2: scr_player_punch2(); break;
    case playerstates.death: scr_player_death(); break;

}

depth = -y




