
if global.interact = 0
{
	
	bulletTimer -=1/room_speed

	if abs(point_distance(x, y, Player.x,Player.y)) < 768
	{
		if bulletTimer<0
		{
			bulletTimer = 3
			var bullet =instance_create_layer(x,y,"Instances",turnedprojectile)
		
			with(bullet)
			{
				speed = 3;
				direction = point_direction(x,y,Player.x+irandom_range(-100,100),Player.y+irandom_range(-100,100))
			}
		
		}
	}
}