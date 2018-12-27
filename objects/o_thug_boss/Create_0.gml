enum thugbossstates
{
    idle,
    chase,
    attack1,
    attack2,
    strongattack,
    windup,
    damage,
    killed,
    death





}

walkspeed = 0
targetx = x
targety = y
aggression = 0
counter = 0
strongattack = 0
damagecooldown = 0
thugdirection = 0
hp = 5
damaged = false



instance_create(x,y,o_thug_boss_shadow)
thugbossstates = thugbossstates.idle

