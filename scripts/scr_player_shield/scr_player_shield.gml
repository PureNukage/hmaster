///Shield

scr_getinputs();
scr_menu_controls();
scr_player_variables();


global.rage -= .5
speed = 0

sprite_index = s_player_shield

if global.rage = 0{
    playerstates = playerstates.normal
}

if shieldrelease{
    playerstates = playerstates.normal
    }

     
        
            
    
