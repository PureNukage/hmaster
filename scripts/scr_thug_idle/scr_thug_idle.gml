scr_thug_variables();

//Sprite change based on direction and speed
if movespeed != 0{
    if thugdirection = 1{
        sprite_index = s_thug_walk_right}
    if thugdirection = -1{
        sprite_index = s_thug_walk_left}
    }
if movespeed = 0{
    if thugdirection = 1{
        sprite_index = s_thug_right}
    if thugdirection = -1{
        sprite_index = s_thug_left}
    }
image_speed = .2    
//direction = point_direction(xprevious,yprevious,x,y)    
   
//Random idle movements

var randmove = irandom(room_speed*2)
var wanderdist = 50 //The distance in pixels your object will wander

if randmove = 0{
    destx = (x + irandom_range(-wanderdist, wanderdist));
    desty = (y + irandom_range(-wanderdist, wanderdist));
}else{
    mp_potential_step_object(destx,desty,walkspeed,o_collision);
}


//Look for player
if distance_to_object(o_player_shadow) < 100{
    if !collision_line(x,y,o_player.x,o_player.y,o_collision,true,false){
        thugstates = thugstates.chase
        }
    }
    
if place_meeting(x,y,o_battlezone){
    mybattlezone = instance_place(self.x,self.y,o_battlezone)
        if mybattlezone != noone{
            if place_meeting(o_player_shadow.x,o_player_shadow.y,mybattlezone){
                thugstates = thugstates.chase
                }
            }
    }
    


    

    

        
        


