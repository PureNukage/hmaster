scr_thug_variables();

sidemod = (thugdirection * -1)
image_speed = .2


//Sprite Direction
if movespeed != 0 and aggression <= 100{
    if thugdirection = 1{
        sprite_index = s_thug_walk_right}
    if thugdirection = -1{
        sprite_index = s_thug_walk_left}
        }
        
if movespeed = 0 and aggression <= 100{
    if thugdirection = 1{
        sprite_index = s_thug_right}
    if thugdirection = -1{
        sprite_index = s_thug_left}
        }
        
//About to swing
if aggression > 100{
    if movespeed != 0{
        if thugdirection = 1{
            sprite_index = s_thug_attack_walk_right
            }
        if thugdirection = -1{
            sprite_index = s_thug_attack_walk_left
            }
        }
    if movespeed = 0{
        if thugdirection = 1{
            sprite_index = s_thug_attack_right
            image_index = 0
            }
        if thugdirection = -1{
            sprite_index = s_thug_attack_left
            image_index = 0
            }
        }
    }
//Lower weapon when you he doesn't swing immediately
    if (aggression > 400){
        aggression = 0
        }
       
//Chase
scr_findposition()
if(point_distance(x,y,targetx,targety) >= movespeed){
    mp_potential_step_object(targetx,targety,walkspeed,o_collision)
    direction = point_direction(self.x,self.y,targetx,targety)
}else{
    movespeed = 0;
}
//Aggression
aggression += (random_range(0,10))

//Queue list
if(point_distance(x,y,targetx,targety) < 200 && ds_list_size(o_player.enemylist) < 2 && ds_list_find_index(o_player.enemylist,id) == -1){
     
    ds_list_add(o_player.enemylist, id);
     
}

//Attack
if((distance_to_object(o_player_shadow) <= attackrange) && abs(y-o_player.y) < layersize){
    if !collision_line(x,y,o_player_shadow.x,o_player_shadow.y,o_collision,true,false) and (aggression >= 200){
            instance_create(x,y,o_thug_hitbox)
            thugstates = thugstates.attack
            speed = 0
            image_index = 0
            }
    //Lower weapon when player is behind wall
    if collision_line(x,y,o_player_shadow.x,o_player_shadow.y,o_collision,true,false){
        aggression = 0
        }
        }
//Check Queue
if(ds_list_size(o_player.enemylist) >= 2 && ds_list_find_index(o_player.enemylist,id) == -1){
        thugstates = thugstates.queue
        speed = 0;
    }
     

