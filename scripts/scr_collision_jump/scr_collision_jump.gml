
//Basic Jump   
hmovement = hspeedx + hsp
vmovement = hspeedy + vsp

//Collision while Jumping
if (place_meeting(o_player_shadow.x+hsp,o_player_shadow.y,o_invisible_wall)){
    x -= hsp
    zland[0] -= hsp}
    
        
if (place_meeting(o_player_shadow.x,o_player_shadow.y+vsp,o_invisible_wall)){
    y -= vsp
    zland[1] -= vsp}



//Jumpbox Hor
if place_meeting(o_player_shadow.x,o_player_shadow.y,o_jumpbox_hor){
    var horcollide = collision_rectangle(o_player_shadow.x-32,o_player_shadow.y-6,o_player_shadow.x+32,o_player_shadow.y+6,o_jumpbox_hor,true,false)
        hspeedx = (hmove * (horcollide.speedx))
        hspeedy = (playerdirection * -1) * (horcollide.speedy)
        if (horcollide != noone){
            if other.playerdirection = 1{
                //if !collision_rectangle(o_player_shadow.x-32+hspeedx,o_player_shadow.y-6,o_player_shadow.x+32+hspeedx,o_player_shadow.y+6,o_invisible_wall,true,false){
                    zland[0]+=lengthdir_x(horcollide.speedx,horcollide.floordir)
                    x+=lengthdir_x(horcollide.speedx,horcollide.floordir)
                //}
                //x -= hsp
                if !collision_rectangle(o_player_shadow.x-32,o_player_shadow.y-6+hspeedy,o_player_shadow.x+32,o_player_shadow.y+6+hspeedy,o_invisible_wall,true,false){
                    y+=lengthdir_y(horcollide.speedy,horcollide.floordir)
                    zland[1]+=lengthdir_y(horcollide.speedy,horcollide.floordir)
                }
                //y -= vsp 
                vsp = 0  
                }
            if other.playerdirection = -1{
                //if !collision_rectangle(o_player_shadow.x-32+hspeedx,o_player_shadow.y-6,o_player_shadow.x+32+hspeedx,o_player_shadow.y+6,o_invisible_wall,true,false){
                    zland[0]-=lengthdir_x(horcollide.speedx,horcollide.floordir)
                    x-=lengthdir_x(horcollide.speedx,horcollide.floordir)
                //}
               // x -= hsp
                if !collision_rectangle(o_player_shadow.x-32,o_player_shadow.y-6+hspeedy,o_player_shadow.x+32,o_player_shadow.y+6+hspeedy,o_invisible_wall,true,false){
                    zland[1]-=lengthdir_y(horcollide.speedy,horcollide.floordir)
                    y-=lengthdir_y(horcollide.speedy,horcollide.floordir)
                }
                vsp = 0
               // y -= vsp
            }
        }      
    }    
   

//Jumpbox Ver
if (place_meeting(o_player_shadow.x,o_player_shadow.y+vsp,o_jumpbox_ver)){
    if vmove < 0{
        zland[0]+=lengthdir_x(o_jumpbox_ver.speedx,o_jumpbox_ver.floordir)
        zland[1]+=lengthdir_y(o_jumpbox_ver.speedy,o_jumpbox_ver.floordir)
        x+=lengthdir_x(o_jumpbox_ver.speedx,o_jumpbox_ver.floordir)
        y+=lengthdir_y(o_jumpbox_ver.speedy,o_jumpbox_ver.floordir)
        }   
    if vmove > 0{
        zland[0]-=lengthdir_x(o_jumpbox_ver.speedx,o_jumpbox_ver.floordir)
        zland[1]-=lengthdir_y(o_jumpbox_ver.speedy,o_jumpbox_ver.floordir) 
        x-=lengthdir_x(o_jumpbox_ver.speedx,o_jumpbox_ver.floordir)
        y-=lengthdir_y(o_jumpbox_ver.speedy,o_jumpbox_ver.floordir)
        }
}
else{/*
speed = movespeed
direction = point_direction(0,0,hsp,vsp)*/

x += hsp
y += vsp

zland[0] += hsp
zland[1] += vsp
}
    
