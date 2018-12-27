

var myposition = ds_list_find_index(o_player.enemylist, id);
 
if(myposition != noone){
    ds_list_delete(o_player.enemylist, myposition);
}
    
if thugdirection = 1{
    sprite_index = s_thug_death_right}
if thugdirection = -1{
    sprite_index = s_thug_death_left}
    
image_speed = .2
speed = 0

if animation_end{
    thugstates = thugstates.dead
    image_index = 4
    }
    

