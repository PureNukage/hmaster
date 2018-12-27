switch (hitboxstates)
{
    case hitboxstates.punch1: break;
    case hitboxstates.punch2: break;
}

x = o_player.x
y = o_player.y
depth = o_player.depth
    
if o_player.playerstates = playerstates.punch1{
    hitboxstates = hitboxstates.punch1
    }
    
if o_player.playerstates = playerstates.punch2{
    hitboxstates = hitboxstates.punch2
    }
    
if hitboxstates = hitboxstates.punch1{
    if o_player.playerdirection = 1{
        sprite_index = s_punch1_hitbox_right
        }
    if o_player.playerdirection = -1{
        sprite_index = s_punch1_hitbox_left
        }
    if animation_end{
        instance_destroy();
        }
    }
if hitboxstates = hitboxstates.punch2{
    if o_player.playerdirection = 1{
        sprite_index = s_punch2_hitbox_right
        }
    if o_player.playerdirection = -1{
        sprite_index = s_punch2_hitbox_left
        }
    if animation_end{
        instance_destroy();
        }
    }
    

