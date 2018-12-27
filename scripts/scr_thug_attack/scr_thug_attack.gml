scr_thug_variables();

image_speed = .2


if thugdirection = 1{
    sprite_index = s_thug_attack_right
    }
    
if thugdirection = -1{
    sprite_index = s_thug_attack_left
    }
    
if animation_end{
    thugstates = thugstates.chase
    image_index = 0
    aggression = 0
    myposition = ds_list_find_index(o_player.enemylist, id);
    var qchance = random_range(0,100)
    var bchance = irandom_range(0,100)
 
if(myposition != noone){
    if qchance > 75{
        ds_list_delete(o_player.enemylist, myposition)
        }
    if bchance > 90{
        choosedirection = irandom_range(0,180)
        breathertimer = irandom_range(10,60)
        thugstates = thugstates.breather
        }
        
    }
}
    





