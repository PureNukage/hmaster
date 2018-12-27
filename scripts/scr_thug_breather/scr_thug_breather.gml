scr_thug_variables();

//Sprite Direction
if movespeed != 0{
    if x > o_player.x{
        sprite_index = s_thug_walk_left
        image_speed = -.2}
    if x < o_player.x{
        sprite_index = s_thug_walk_right
        image_speed = -.2}
        }
        
if movespeed = 0{
    if thugdirection = 1{
        sprite_index = s_thug_right}
    if thugdirection = -1{
        sprite_index = s_thug_left}
        }
        
//Erratic Movement
breathertimer -= 1
if sidemod = 1{
    direction = choosedirection + 180}
if sidemod = -1{
    direction = choosedirection}
speed = walkspeed

//Collision Check
if place_meeting(x+speed,y,o_collision){
    speed = 0}
if place_meeting(x,y+speed,o_collision){
    speed = 0}
    
//Done with Breather
if breathertimer <= 0{
    thugstates = thugstates.chase
    speed = 0
    }

        



