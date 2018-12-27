scr_thugboss_variables();

sprite_index = s_thug_boss_attack1

counter -= 1

if instance_exists(o_thug_boss_hitbox){
    if (place_meeting(o_thug_boss_hitbox.x,o_thug_boss_hitbox.y,o_player)) and abs(depth - other.depth) < layersize{
        counter = 4
        instance_create(x,y,o_thug_hitbox)
        thugbossstates = thugbossstates.attack2
        }
    }

if counter <= 0 {
    thugbossstates = thugbossstates.chase
    aggression = 0
    walkspeed = 0
    }



