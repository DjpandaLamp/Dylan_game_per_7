/// @description Insert description here
// You can write your code in this editor
#region //cloud sprites
cloud_chance = random(1)
if cloud_chance < 0.1
{
}
if cloud_chance > 0.3
{
}
if cloud_chance > 0.5
{
}
if cloud_chance > 0.7
{
}
if cloud_chance > 0.9
{
}
#endregion

#region //coin text
if global.coins < 0
{
	coin_text = "Your Debt: "
	
	
}
else coin_text = "Coins: "
#endregion

#region //room switch handling
if keyboard_check_pressed(ord("Z")) and room = rm_mainmenu or keyboard_check_pressed(vk_enter) and room = rm_mainmenu
{
		room_goto_next()
}

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
if room = rm_mainmenu
{
	cloud_spawning = false	
}
if room = rm_map1
{
	cloud_spawning = true
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
	instance_create_depth(room_width,0+random(192),300,Obj_cloud)	
	cloud_timer = 0
	cloud_random = random_range(180,360)
	}
}
#endregion



if instance_exists(Player) 
{
blaze_check = Player.blaze_timer
}