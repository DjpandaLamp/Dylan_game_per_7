inv_time -=1
blaze_timer -=1
fallspeed = .75
if keyboard_check(vk_lshift) speed_mult = 2
hspd = ((keyboard_check(vk_right)-keyboard_check(vk_left))*speed_mult*5)
vspd = vspd+fallspeed
if vspd > 12.5 vspd = 12.5

#region //Movement and sprite
    moving = false
    
    if keyboard_check_pressed(vk_up) 
    {
        dir = 0
        moving = true
		if jump = true 
			{
				vspd = jumpspeed
			}
    }
    if keyboard_check(vk_down) 
    {
        dir = 1
        moving = true
    }
    if keyboard_check(vk_right) 
    {
        sprite_index = playerrunright
        dir = 2
        moving = true        
    }
    if keyboard_check(vk_left) 
    {
        sprite_index = playerrunleft
        dir = 3
        moving = true
    }
 
    if moving = false and dir = 2
    {
        sprite_index = playeridleright
        
    }
    if moving = false and dir = 3
    {
        sprite_index = playeridleleft
	}    
    
#endregion

#region //Ground and wall colision + Jumping
if(place_meeting(x+(3*hspd),y, floor3))
{
    while(!place_meeting(x+sign(hspd),y,floor3))
    {
        x = x+(sign(hspd));
        moving = false
    }
    hspd = 0;
} 

x=x+(hspd)


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

y=y+(vspd)

if place_meeting(x,y+1,floor3)
{
	jump = true
}
else jump = false

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
if global.health <= 0 
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
#endregion

#region //Attack
if keyboard_check_pressed(ord("Q")) and blaze_timer < 0
{
	blaze_timer = 6000
	blaze = true
}
if blaze_timer < 5960
{
	blaze = false
}
else
{
	if dir = 1
	{
		sprite_index = playerfireright
	}
	if dir = 2
	{
		sprite_index = playerfireright
	}
}

#endregion

