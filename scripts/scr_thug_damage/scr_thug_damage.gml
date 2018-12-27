scr_thug_variables();

if damaged = true{
    hp -= 1
    global.rage += 10
    damaged = false
    }
    
if thugdirection = 1{
    sprite_index = s_thug_damaged_right
    }
if thugdirection = -1{
    sprite_index = s_thug_damaged_left
    }    
    
/*knockback = point_direction(x,y,o_player.x,o_player.y) + 180 
direction = knockback
speed = movespeed*/
      
    
stun -= 1

if stun <= 0{
    thugstates = thugstates.chase
    }
    

    


    

