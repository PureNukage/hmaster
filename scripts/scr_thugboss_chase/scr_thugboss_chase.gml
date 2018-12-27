scr_thugboss_variables();


sidemod = (thugdirection * -1)


walkspeed += .2

//Chase
scr_findposition();
if(point_distance(x,y,targetx,targety) >= (sidemod * 15)){
    mp_potential_step_object(targetx,targety,walkspeed,o_collision)
    direction = point_direction(self.x,self.y,targetx,targety)
    }
else{
    walkspeed = 0
    }
//Sprite Change
if movespeed != 0{
    if thugdirection = 1{
        sprite_index = s_thug_boss_idle
        image_xscale = -1}
    if thugdirection = -1{
        sprite_index = s_thug_boss_idle
        image_xscale = 1}
    }
    
//Lower Fist   
if aggression > 400{
    aggression = 0}
    
    
//Random Chance to get + Strong Attack
strongattackchance = irandom_range(0,100)
if strongattackchance >= 99{
    strongattack += 1
    }

    
//Attacking    
aggression += irandom_range(0,5)

//Strong Attack
if (strongattack >= 5) and (distance_to_point(targetx,targety) <= 3){
    thugbossstates = thugbossstates.windup
    strongattack = 0
    aggression = 0
    counter = 20
    }

//Light Attack
if (aggression >= 200) and (distance_to_point(targetx,targety) <= 3){
    strongattack += 1
    counter = 4
    thugbossstates = thugbossstates.attack1
    instance_create(x,y,o_thug_boss_hitbox)
    }

    


