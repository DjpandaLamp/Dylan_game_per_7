/// @description Insert description here
// You can write your code in this edi
if global.attack > global.attackmax
{
global.attack = global.attackmax	
}
if global.health > global.healthmax
{
global.health = global.healthmax
}



if keyboard_check_pressed(vk_escape)
{
	if global.interact = 1
	{
		global.interact = 0	
	}
	else global.interact = 1
}






#region //coin text
if global.coins < 0
{
	coin_text = "Your Debt: "
	
	
}
else coin_text = "Coins: "
#endregion

#region //room switch handling

if keyboard_check_pressed(ord("N"))
{
room_goto_next()
}
if keyboard_check_pressed(ord("P"))
{
	room_goto_previous()
}
#endregion

#region //background clouds spawner
if global.interact = 0
{
if room = rm_mainmenu
{
	cloud_spawning = true
	range=512
}
if room = rm_map1
{
	cloud_spawning = true
	range=192
}
if room = rm_1_1
{
	cloud_spawning = false	
}

if cloud_spawning = true

{
	cloud_timer +=1
	if cloud_timer > cloud_random
	{
	instance_create_depth(room_width,0+random(range),300,Obj_cloud)	
	cloud_timer = 0
	cloud_random = random_range(180,360)
	}
}
}
#endregion
if keyboard_check_pressed(ord("D"))
{
if global.debug = 1 
{
	global.debug = 0
}
else 
{
global.debug = 1
}
}

if global.debug = 1
{
if keyboard_check_pressed(ord("E"))
	{
	global.attack = global.attackmax	
	}
	if keyboard_check_pressed(ord("H"))
	{
	global.health = global.healthmax	
	}
	if keyboard_check_pressed(ord("O"))
	{
	global.plot_value +=1	
	}
	if keyboard_check_pressed(ord("L"))
	{
	global.plot_value -=1	
	}
}



