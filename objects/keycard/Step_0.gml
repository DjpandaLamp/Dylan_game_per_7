/// @description Insert description here
// You can write your code in this editor
if BeingCarryed = true
{
sprite_index = keycard_caught

	if Player.dir = 2
	{
		x=Player.x+32
		y=Player.y-32
	}

	if Player.dir = 3
	{
		x=Player.x-96
		y=Player.y-32
	}
}
else
{
	sprite_index = keycard_free
	
}


