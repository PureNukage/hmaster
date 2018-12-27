if o_debug.debug = debug.thug{
draw_text(0,15,string_hash_to_newline("State: " + string(thugstates)))
draw_text(0,30,string_hash_to_newline("Thug Direction: " + string(thugdirection)))
draw_text(0,45,string_hash_to_newline("TargetX: " + string(targetx)))
draw_text(0,60,string_hash_to_newline("TargetY: " + string(targety)))
draw_text(0,75,string_hash_to_newline("Depth: " + string(depth)))
draw_text(0,90,string_hash_to_newline("Hp: " + string(hp)))
draw_text(0,105,string_hash_to_newline("Movespeed: " + string(movespeed)))
draw_text(0,120,string_hash_to_newline("Aggression: " + string(aggression)))
draw_text(0,135,string_hash_to_newline("Distance to Player: " + string(distance_to_point(o_player.x,o_player.y))))
draw_text(0,150,string_hash_to_newline("Stun: " + string(stun)))
draw_text(0,165,string_hash_to_newline("Damage Cooldown: " + string(damagecooldown)))
draw_text(0,180,string_hash_to_newline("Direction : " + string(direction)))

}

