
//Collide with Invisible Wall
if (place_meeting(x+hsp,y,o_invisible_wall)){
    x -= hsp}
if (place_meeting(x,y+vsp,o_invisible_wall)){
    y -= vsp}
         
if (place_meeting(x+hsp,y,o_jumpbox_hor)){  
    x -= hsp}
             
if (place_meeting(x,y+vsp,o_jumpbox_hor)){   
    y -= vsp}
    
if (place_meeting(x+hsp,y,o_jumpbox_ver)){
    x -= hsp}
             
if (place_meeting(x,y+vsp,o_jumpbox_ver)){
    y -= vsp}

    
  
else{/*
    speed = movespeed
    direction = point_direction(0,0,hsp,vsp)*/
    
    x += hsp
    y += vsp
    
} 
//Ramp
if (place_meeting(o_player_shadow.x,o_player_shadow.y,o_ramp)){
    var horcollide = instance_place(o_player_shadow.x,o_player_shadow.y,o_ramp)
        hspeedx = sign(hsp) * (horcollide.speedx)
        hspeedy = sign(vsp) * (horcollide.speedy)
    if (horcollide != noone){
    if other.hsp > 0{
        if !place_meeting(x+hmovement,y,o_invisible_wall){
            zland[0]+=lengthdir_x(horcollide.speedx,horcollide.floordir)
            x+=lengthdir_x(horcollide.speedx,horcollide.floordir)
            }
        if !place_meeting(x,y+vmovement,o_invisible_wall){
            zland[1]+=lengthdir_y(horcollide.speedy,horcollide.floordir)
            y+=lengthdir_y(horcollide.speedy,horcollide.floordir)
            }
        }
    if other.hsp < 0{
        if !place_meeting(x+hmovement,y,o_invisible_wall){
            zland[0]-=lengthdir_x(horcollide.speedx,horcollide.floordir)
            x-=lengthdir_x(horcollide.speedx,horcollide.floordir)
            }
        if !place_meeting(x,y+vmovement,o_invisible_wall){
            zland[1]-=lengthdir_y(horcollide.speedy,horcollide.floordir)
            y-=lengthdir_y(horcollide.speedy,horcollide.floordir)
            }
        }
    }
}  

    


