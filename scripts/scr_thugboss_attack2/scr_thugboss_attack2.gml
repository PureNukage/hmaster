scr_thugboss_variables();

sprite_index = s_thug_boss_attack2

counter -= 1



if counter <= 0 {
    thugbossstates = thugbossstates.chase
    aggression = 0
    }

