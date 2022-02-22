/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y+vspd, fallingbricksObj))  and other.sprite_index = fallingbricks1_spt or (place_meeting(x,y+vspd, fallingbricksObj))  and other.sprite_index = fallingbricks2_spt
{
    while(!place_meeting(x,y+sign(vspd),fallingbricksObj))
    {
        y = y+(sign(vspd));
    moving = false
    }
    fallspeed = 0
    vspd = 0;
	
} 

if(place_meeting(x+hspd,y, fallingbricksObj)) and other.sprite_index = fallingbricks1_spt or (place_meeting(x+hspd,y, fallingbricksObj)) and other.sprite_index = fallingbricks2_spt
{
    while(!place_meeting(x+sign(hspd),y,fallingbricksObj))
    {
        x = x+(sign(hspd));
       moving = false
   }
	 hspd = 0;
}
