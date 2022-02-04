/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y+(3*vspd), floor3))
{
    while(!place_meeting(x,y+sign(vspd),floor3))
    {
        y = y+(sign(vspd));
    moving = false
    }
    fallspeed = 0
    vspd = 0;
} 

if(place_meeting(x+(3*hspd),y, floor3)) and other.sprite_index = fallingbricks1_spt
{
    while(!place_meeting(x+sign(hspd),y,floor3))
    {
        x = x+(sign(hspd));
        moving = false
    }
	 vspd = 0;
}
   