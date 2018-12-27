scr_getinputs()
scr_menu_controls()
scr_player_variables();
//Collision Check

//The Jump   


zaxis -= zspeed

    zspeed -= 1
if zaxis <= o_player_shadow.y{
    y = zaxis
    x = o_player_shadow.x
    }

if zspeed < 0{   
    playerstates = playerstates.freefall
    }

scr_collision_jump()  
    



    




