// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateAttack(){



if keyboard_check_pressed(vk_control) and global.attack > 0
{
	global.attack -=1
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




function SpriteSet(){
	
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
	else if dir = 2
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
}
}