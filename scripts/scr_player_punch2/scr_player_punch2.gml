scr_getinputs();
scr_menu_controls();
scr_player_variables();

zland[0] = x
zland[1] = y

if momentum > 0{
    momentum -= 1}
    
direction = playerdirection

//Choose Sprite    
if playerdirection = 1{
    sprite_index = s_player_punch_2_right
    image_speed = .2
    
    }
    
if playerdirection = -1{
    sprite_index = s_player_punch_2_left
    image_speed = .2
    
    }
    
//Dont move through walls    
if !place_meeting(o_player_shadow.x+((playerdirection * 5) + hsp),o_player_shadow.y,o_collision){
    x += playerdirection * momentum
    }
    
//Shield
if (shield) and (global.rage > 0) and (image_index = 3){
    image_index = 0
    playerstates = playerstates.shield
    shieldtimer = 60
    } 
    
//Next Attack      
if qpress{
    nextattack = true
    }
    
if nextattack = true{
    if image_index = 3{
        momentum = 5
        playerstates = playerstates.punch1
        image_index = 0
        nextattack = false
        instance_create(x,y,o_player_hitbox)
        speed = 0
        }
    }
    
if image_speed > 0{
    if animation_end{
        if nextattack = true{
            momentum = 5
            playerstates = playerstates.punch1
            image_index = 0
            nextattack = false
            instance_create(x,y,o_player_hitbox)
            speed = 0
            }
        else
            playerstates = playerstates.normal
            }
        }
    
