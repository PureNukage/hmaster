enum thugstates
{
    idle,
    chase,
    queue,
    breather,
    attack,
    damage,
    killed,
    dead,
    
    
}

stun = 0
damaged = false
hp = 2
thugdirection = 0
damagecooldown = 0
targetx = x
targety = y
aggression = 0
mybattlezone = 0
myaction = 0
destx = 0
desty = 0
walkspeed = 3
movespeed = abs(xprevious - x) + abs(yprevious - y)



instance_create(x,y,o_thug_shadow)

thugstates = thugstates.idle

