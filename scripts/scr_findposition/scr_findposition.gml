///FindTarget
 
if(point_distance(targetx,targety,o_player_shadow.x,o_player_shadow.y) > attackrange || point_distance(targetx,targety,o_player_shadow.x,o_player_shadow.y) < 50 || abs(targety-o_player_shadow.y) > layersize || sign(targetx-o_player_shadow.x) != sign(sidemod)){
    targetx = random_range(o_player_shadow.x+(attackrange-10)*sidemod, o_player_shadow.x+attackrange*sidemod);
    targety = random_range(o_player_shadow.y-15, o_player_shadow.y+15);
}
