depth = -y

if o_player.x < x{
    sprite_index = s_thug_attackbox_left}
if o_player.x > x{
    sprite_index = s_thug_attackbox_right}
    

    
if animation_end{
    instance_destroy()
    }
    
if mythug.thugstates = thugstates.dead{
    instance_destroy()
    }

