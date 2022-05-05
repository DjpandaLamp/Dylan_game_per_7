// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsX(){
//What to do
if(place_meeting(x+hspd,y, floor3)) 
{
    while(!place_meeting(x+sign(hspd),y,floor3))
    {
        x = x+(sign(hspd));
        moving = false
    }
	
    hspd = 0;

} 


//what animation to play



//how to exit

}

function CheckCollisionsY(){
//What to do
	if(place_meeting(x,y+vspd, floor3)) 
	{
	    while(!place_meeting(x,y+sign(vspd),floor3))
	    {
	        y = y+(sign(vspd));
	    moving = false
	    }
	    fallspeed = 0
	    vspd = 0;
		

	} 

	
if !place_meeting(x,y+1,fallingbricksObj) and !place_meeting(x,y+1,floor3)
{
	on_ground = false	
}
	
if place_meeting(x,y+1,fallingbricksObj) or place_meeting(x,y+1,floor3)
{
	JumpTime = 0
}
//what animation to play



//how to exit
}

function CheckCollisionsFX(){
	
if place_meeting(x,y+hspd,fallingbricksObj)
{
var fb
fb=instance_place(x,y+hspd,fallingbricksObj)

if(place_meeting(x+hspd,y, fallingbricksObj)) and fb.sprite_index = fallingbricks1_spt or (place_meeting(x+hspd,y, fallingbricksObj)) and fb.sprite_index = fallingbricks2_spt
	{
	    while(!place_meeting(x+sign(hspd),y,fallingbricksObj))
	    {
	        x = x+(sign(hspd));
	       moving = false
	  
	   }
		hspd = 0;
	
	}

}
	
}
	
function CheckCollisionFY(){

if place_meeting(x,y+vspd,fallingbricksObj)
{
	var fb
	fb=instance_place(x,y+vspd,fallingbricksObj)

	if(place_meeting(x,y+vspd, fallingbricksObj))  and fb.sprite_index = fallingbricks1_spt or (place_meeting(x,y+vspd, fallingbricksObj))  and fb.sprite_index = fallingbricks2_spt
	{
	    while(!place_meeting(x,y+sign(vspd),fallingbricksObj))
	    {
	        y = y+(sign(vspd));
			moving = false
	
	    }

	    fallspeed = 0
	    vspd = 0;
		JumpTime = 0
	} 


	
   if(place_meeting(x,y+1, fallingbricksObj))  and fb.sprite_index = fallingbricks1_spt or (place_meeting(x,y+1, fallingbricksObj))  and fb.sprite_index = fallingbricks2_spt
   {
	on_ground = true
    
   }

}
}
	
function CheckCollisionsTX(){
//What to do
if(place_meeting(x+hspd,y, turned_totorial)) 
{
    while(!place_meeting(x+sign(hspd),y,turned_totorial))
    {
        x = x+(sign(hspd));
        moving = false
    }
	
    hspd = 0;
} 
//what animation to play



//how to exit

}

function CheckCollisionsTY(){
//What to do
	if(place_meeting(x,y+vspd, turned_totorial)) 
	{
	    while(!place_meeting(x,y+sign(vspd),turned_totorial))
	    {
	        y = y+(sign(vspd));
	    moving = false
	    }
	    fallspeed = 0
	    vspd = 0;
		JumpTime = 0

	} 
}

function CheckCollisionsDX(){
//What to do
var _inst
_inst = instance_place(x+hspd,y,door);
if instance_place(x+hspd,y,door) and _inst.sprite_index = locked_door
{
    while(!place_meeting(x+sign(hspd),y,door))
    {
        x = x+(sign(hspd));
        moving = false
    }
	
    hspd = 0;

} 


//what animation to play



//how to exit

}

function CheckCollisionsDY(){
var _inst
_inst = instance_place(x,y+vspd,door);
if instance_place(x,y+vspd,door) and _inst.sprite_index = locked_door
	{
	    while(!place_meeting(x,y+sign(vspd),door))
	    {
	        y = y+(sign(vspd));
	    moving = false
	    }
	    fallspeed = 0
	    vspd = 0;
	} 
}



