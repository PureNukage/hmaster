scr_thug_variables()

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

//Erratic Movement
//var randmove = irandom(room_speed*2)
var wanderdist = 50 //The distance in pixels your object will wander


//if randmove = 0{
    destx = (o_player.x + irandom_range(-wanderdist, wanderdist));
    desty = (o_player.y + irandom_range(-wanderdist, wanderdist));

    mp_potential_step_object(destx,desty,walkspeed,o_collision);
            
        
        
//Check for the swap      
if(ds_list_size(o_player.enemylist) < 2){
        ds_list_add(o_player.enemylist, id)
        thugstates = thugstates.chase
            
        }
