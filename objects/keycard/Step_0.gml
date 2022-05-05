/// @description Insert description here
// You can write your code in this editor
if BeingCarryed = true
{
sprite_index = keycard_caught
NotCarryTimer = 0
speed = 0
	if Player.dir = 2
	{
		x=Player.x+32
		y=Player.y-32
		image_xscale = 1	
	}

	if Player.dir = 3
	{
		x=Player.x-32
		y=Player.y-32
		image_xscale = -1
	}
}


if BeingCarryed = false
{
	sprite_index = keycard_free
	NotCarryTimer +=1/room_speed
}
if NotCarryTimer >= 5
{
	
	direction = point_direction(x, y, xstart, ystart)
	speed = point_distance(x, y, xstart, ystart)*0.02
	if x = xstart and y = ystart
	{
	speed = 0	
	}
	
}
