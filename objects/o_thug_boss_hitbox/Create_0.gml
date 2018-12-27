//Direction
if o_thug_boss.direction > 270{
    image_xscale = -1
    }
    
if (o_thug_boss.direction > 90 and o_thug_boss.direction < 270){
    image_xscale = 1
    }
    
//Which Attack?
if (o_thug_boss.thugbossstates = thugbossstates.attack1) or (o_thug_boss.thugbossstates = thugbossstates.attack2){
    sprite_index = s_thug_boss_hitbox_attack
    }
    
if (o_thug_boss.thugbossstates = thugbossstates.strongattack){
    sprite_index = s_thug_boss_hitbox_attack
    }
    
    
    
    
    
//Damage
event_inherited()
if sprite_index = s_thug_boss_hitbox_attack{
    damage = 1
    } 


