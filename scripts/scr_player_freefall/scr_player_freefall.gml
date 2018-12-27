//The Freefall
scr_getinputs()
scr_menu_controls()
scr_player_variables();


zaxis -= zspeed
zspeed -= 1
if zaxis <= zland[1]{
    y = zaxis
    x = o_player_shadow.x
    }

else {
    zspeed = 0
    playerstates = playerstates.normal
    
    if place_meeting(o_player_shadow.x,o_player_shadow.y,o_jumpoff){
        var jumpoffcollide = instance_place(o_player_shadow.x,o_player_shadow.y,o_jumpoff)
            if (jumpoffcollide != noone){
                zland[0] += jumpoffcollide.fallheightx
                zland[1] += jumpoffcollide.fallheighty
                playerstates = playerstates.freefall
                
                }
            }
    
    
        
        
    if place_meeting(o_player_shadow.x,o_player_shadow.y,o_invisible_wall){
        x = xprevious
        y = yprevious
        zland[0] -= xprevious
        zland[1] -= yprevious
        }
    }
    
scr_collision_jump()
