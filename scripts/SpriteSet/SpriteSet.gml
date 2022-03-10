// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
