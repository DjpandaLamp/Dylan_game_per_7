//Timers
roomtimer -= 1.5/room_speed
buffer_timer -=1
inv_time -=1/room_speed

fallspeed = .75
fox_timer -=1

//Level Timer
if roomtimer < 0 
{
PlayerDeath()
}


if keyboard_check(vk_lshift) speed_mult = 2
hspd = ((keyboard_check(vk_right)-keyboard_check(vk_left))*speed_mult*5)
vspd = vspd+fallspeed
if vspd > 12.5 vspd = 12.5

#region //Movement and sprite
    
if place_meeting(x,y+1,floor3) or place_meeting(x,y+1,fallingbricksObj)
    {
    on_ground = true
    jump = true
    }
else on_ground = false
    
if on_ground 
{
    jump = false
    fox_timer = fox_max
}
else
{

}

if keyboard_check_pressed(vk_up) 
    {
       
        moving = true
        if on_ground = true 
        {
            vspd = jumpspeed
        }
        else
        {
            buffer_timer = buffer_max
        }
        
        if jump = false and fox_timer > 0 and on_ground = false
        {
            vspd = jumpspeed
        }
            
    }
if on_ground and buffer_timer > 0 
{
vspd = jumpspeed    
}

moving = false

if keyboard_check(vk_right) 
    {
        dir = 2
        moving = true        
    }
if keyboard_check(vk_left) 
    {
        dir = 3
        moving = true
    } 
if place_meeting(x,y+1,floor3)
    {
    on_ground = true
    jump = true
    }
else on_ground = false
    
if on_ground 
{
    jump = false
    fox_timer = fox_max
}
else
{

}
    
    
#endregion

#region //Ground and wall colision + Jumping
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
} 

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



if(place_meeting(x+hspd,y, floor3)) 
{
    while(!place_meeting(x+sign(hspd),y,floor3))
    {
        x = x+(sign(hspd));
        moving = false
    }
	
    hspd = 0;
} 


x=x+(hspd)


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

y=y+(vspd)



#endregion

#region //Effects and Death code
if y>room_height
{
    jump = true
    moving = false
    friction = 2
    dir = 1
    vspd = 0
    hspd = 0
    speed_mult = 1
    fallspeed = 0
    jumpspeed = -16
    global.coins = global.coins - 5
    global.points = global.points - 200
    global.health = 6
    room_restart()    
}

if inv_time < 0  effect_clear()

#endregion

#region //Attack
if keyboard_check_pressed(vk_escape) 
{
	if dir = 3
	{
		Attacking = true
		sprite_index = Playerattackleft
		instance_create_depth(x-96,y-32,0,attackhitbox)
	}
	if dir = 2
	{
		Attacking = true
		sprite_index = Playerattackright
		instance_create_depth(x+32,y-32,0,attackhitbox)
	}
}

if !instance_exists(attackhitbox)
{
Attacking = false	
}

if Attacking = false
{
	if dir = 3 
	{
		if moving
		{
			sprite_index = playerrunleft
		}
		else
		{
			sprite_index = playeridleleft
		}
	}
	if dir = 2
		{
		if moving
		{
			sprite_index = playerrunright
		}
		else
		{
			sprite_index = playeridleright
		}
	}
}




#endregion



if x < 300
{
    global.uiPos = -400
}
else
{
    global.uiPos = 0
}
if y < 400
{
	 global.uiPos = 0
}
