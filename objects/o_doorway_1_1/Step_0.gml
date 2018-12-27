if o_restaurant_forefront_1.visible = false{
    visible = true}
if o_restaurant_forefront_1.visible = true{
    visible = false}


 
//Left Side
if point_in_triangle(o_player_shadow.x,o_player_shadow.y,x+20,y+116,x+144,y+307,x-76,y+307){
    depth = o_player.depth + 1}
if point_in_triangle(o_player_shadow.x,o_player_shadow.y,x+20,y+116,x-200,y+116,x-76,y+307){
    depth = o_player.depth + 1}
    
//Right Side
if point_in_triangle(o_player_shadow.x,o_player_shadow.y,x+20,y+116,x+200,y+116,x+144,y+307){
    depth = o_player.depth - 1}
if point_in_triangle(o_player_shadow.x,o_player_shadow.y,x+144,y+307,x+324,y+307,x+200,y+116){
    depth = o_player.depth -1}
   

    
    


