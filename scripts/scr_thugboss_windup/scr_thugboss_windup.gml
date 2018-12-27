scr_thugboss_variables();

//Sprite
sprite_index = s_thug_boss_windup

counter -= 1

if counter <= 0{
    counter = 4
    thugbossstates = thugbossstates.strongattack
    instance_create(x,y,o_thug_boss_hitbox)
    }


