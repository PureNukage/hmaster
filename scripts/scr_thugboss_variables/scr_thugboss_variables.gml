attackrange = 30
walkspeed = clamp(walkspeed,0,4)

//Direction 
if (direction > 270){
    thugdirection = 1}
if (direction > 90 and direction < 270){
    thugdirection = -1}
    
    
    
    
    
//Taking Damage
if (collision_rectangle(x-23,y-99,x+23,y+4,o_player_hitbox,true,false) and abs(depth - other.depth) <= layersize) and (damaged = false){  
            damaged = true
            hp -= 1
            damagecooldown = 5
            }
    
if damaged = true{
    damagecooldown -= 1
    if damagecooldown <= 0{
        damaged = false
        }
    }


        
if hp <= 0{
    thugbossstates = thugbossstates.killed
    } 
