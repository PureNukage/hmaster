/*if o_restaurant_forefront.visible = false{
    visible = true}
if o_restaurant_forefront.visible = true{
    visible = false}
 */   
 
if place_meeting(x,y,o_player){
    o_restaurant_forefront_2.visible = false
    }
    
//Left Side
if point_in_triangle(o_player_shadow.x,o_player_shadow.y,x+20,y+160,x+131,y+368,x-69,y+368){
    depth = o_player.depth + 1}
if point_in_triangle(o_player_shadow.x,o_player_shadow.y,x+20,y+160,x-200,y+160,x-69,y+368){
    depth = o_player.depth + 1}
    
//Right Side
if point_in_triangle(o_player_shadow.x,o_player_shadow.y,x+20,y+160,x+200,y+160,x+131,y+368){
    depth = o_player.depth - 1}
if point_in_triangle(o_player_shadow.x,o_player_shadow.y,x+131,y+368,x+331,y+368,x+200,y+160){
    depth = o_player.depth -1}

/* */
/*  */
