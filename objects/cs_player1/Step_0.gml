/// @description Insert description here
// You can write your code in this editor
cs_timer +=1/room_speed

if cs_number = 0
{
	if cs_timer = 2
	{
	sprite_index = playerpoweringup	
	}
	if cs_timer	>= 2 and cs_timer <= 7
	{
		
		y=y-0.08
	}
	
	if cs_timer =7 
	{
	y = ystart	
	}
	
	if cs_timer >= 7 and cs_timer <=10
	{
	sprite_index = playerrunright	
		x=x+5
	}
	if cs_timer >=10.5 and cs_timer <= 12.5 
	{
	y=y-2	
	image_speed = 3
	}
	
	
	
	if cs_timer >= 13
	{
		image_speed = 1
		sprite_index = PlayerMidJump
		y=y+csDown
		
	}
	
	
	if y >= room_height
	{
		room = rm_al	
	}
	
	
}
