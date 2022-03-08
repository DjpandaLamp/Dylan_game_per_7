// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpriteSet(argument0, argument1){
	
	if argument0 = 3
	{
		{
			sprite_index = playeridleleft
		}
	}
	else if argument0 = 2
		{
			sprite_index = playeridleright
		}
	}


function SpriteSetRunning(argument0){

	if argument0 = 3
	{
		if argument1 = 1
		{
			sprite_index = playerrunleft
		}
		else
		{
			sprite_index = playeridleleft
		}
	}
	else if argument0 = 2
		{
		if argument1 = 1
		{
			sprite_index = playerrunright
		}
		else
		{
			sprite_index = playeridleright
		}
	}
}