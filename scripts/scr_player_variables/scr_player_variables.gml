hmovement = hspeedx + hsp
vmovement = hspeedy + vsp
height = abs(zaxis - zland[1])

//Movement
vmove = ((down) - (up) + gamepad_axis_value(0,gp_axislv))
hmove = ((right) - (left) + gamepad_axis_value(0,gp_axislh))

hsp = (hmove * 5) //+ (gamepad_axis_value(0,gp_axislh) * 5)
vsp = (vmove * 5) //+ (gamepad_axis_value(0,gp_axislv) * 5)   



if hmove != 0{
    if hmove > 0{
        playerdirection = 1
    }
    if hmove < 0{
        playerdirection = -1
    }
}

//Take Damage
if (collision_rectangle(x-33,y-66,x+33,y+2,o_hitbox_parent,true,false) and abs(depth - other.depth) < layersize) and (damaged = false){
    if height <= 30{
        if playerstates != playerstates.shield {
        whathitme = (collision_rectangle(x-33,y-66,x+33,y+2,o_hitbox_parent,true,false))
            if (whathitme != noone){
                damaged = true
                o_health.hp -= whathitme.damage
                damagecooldown = 5
                }
            }
    }
    
}
if damaged = true{
    damagecooldown -= 1
    if damagecooldown <= 0{
        damaged = false
        }
    }


        
if o_health.hp <= 0{
    playerstates = playerstates.death
    }
