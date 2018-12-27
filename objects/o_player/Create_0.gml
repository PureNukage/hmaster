enum playerstates
{
    normal,
    shield,
    jump,
    freefall,
    collision,
    collisionjump,
    ledgegrab,
    punch1,
    punch2,
    death,
    
}


enemylist = ds_list_create()

shieldtimer = 0
vmove = 0
hmove = 0
movespeed = 0
hsp = 0
vsp = 0
zaxis = y
zspeed = 0
momentum = 0
global.rage = 0

hspeedx = 0
hspeedy = 0

nextattack = false
damaged = false

zland[0] = x
zland[1] = y

playerdirection = 1


playerstates = playerstates.normal

instance_create(x,y,o_player_shadow)

