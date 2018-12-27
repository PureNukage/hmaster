if o_debug.debug = debug.thugboss
{
    draw_text(0,15,string_hash_to_newline("State: " + string(thugbossstates)))
    draw_text(0,30,string_hash_to_newline("Direction: " + string(thugdirection)))
    draw_text(0,45,string_hash_to_newline("Movespeed: " + string(movespeed)))
    draw_text(0,60,string_hash_to_newline("Walkspeed: " + string(walkspeed)))
    draw_text(0,75,string_hash_to_newline("Distance to Player: " + string(distance_to_object(o_player))))
    draw_text(0,90,string_hash_to_newline("Aggression: " + string(aggression)))
    draw_text(0,105,string_hash_to_newline("Counter: " + string(counter)))





}

