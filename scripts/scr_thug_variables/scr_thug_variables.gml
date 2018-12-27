sightrange = 50
attackrange = 15



if (direction > 270){
    thugdirection = 1}
if (direction > 90 and direction < 270){
    thugdirection = -1}
  
if hp <= 0{
        movespeed = 0
        image_index = 0
        thugstates = thugstates.killed
        }  
    

      
if (collision_rectangle(x-16,y-69,x+16,y+5,o_player_hitbox,true,false) and abs(depth - o_player_hitbox.depth) <= layersize){
    damaged = true
    movespeed = 0
    stun = 15
    aggression = 0
    thugstates = thugstates.damage
    }
        

    





