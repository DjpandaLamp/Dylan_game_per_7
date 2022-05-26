
if global.interact = 0
{
	
	bulletTimer -=1/room_speed

	if abs(point_distance(x, y, Player.x,Player.y)) < 768
	{
		if bulletTimer<0
		{
			bulletTimer = 3
			bulletspeed = irandom_range(0,10)
			if bulletspeed >= 8.5
			{
			var bullet =instance_create_layer(x,y,"Instances",turnedprojectilefast)
			}
			else
			{
			var bullet =instance_create_layer(x,y,"Instances",turnedprojectile)
			}
			
			with(bullet)
			{
				if turnedturret.bulletspeed >= 8.5
				{
				speed = 6;
				direction = point_direction(x,y,Player.x+irandom_range(-25,25),Player.y+irandom_range(-25,25))
				}
				else
				{
				speed = 3;
				direction = point_direction(x,y,Player.x+irandom_range(-100,100),Player.y+irandom_range(-100,100))
				}
			}
		
		}
	}
}