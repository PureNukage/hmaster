scr_getinputs();
scr_menu_controls();
scr_player_variables();



hspeedx = 0
hspeedy = 0

movespeed = point_distance(0,0,hsp,vsp)
          
zland[0] = x
zland[1] = y

zaxis = y

//Jump
if spacepress{ 
    zspeed = 10
    playerstates = playerstates.jump}
    
//Attack
if qpress{
    momentum = 5
    movespeed = 0
    image_index = 0 
    playerstates = playerstates.punch1
    instance_create(x,y,o_player_hitbox)
    }

//shield
if (shield) and (global.rage > 0){
    image_index = 0
    playerstates = playerstates.shield
    shieldtimer = 60
    }
    
    
//Sprites
if hsp != 0 or vsp != 0{
    if playerdirection = 1{
        sprite_index = s_player_walk_right}
    if playerdirection = -1{
        sprite_index = s_player_walk_left}
    }

if movespeed = 0{
    if playerdirection = 1{
        sprite_index = s_player_right}
    if playerdirection = -1{
        sprite_index = s_player_left}
    }
image_speed = movespeed * .05

scr_collision()


    

    

