

bulletTimer -=1/room_speed

if abs(point_distance(x, y, Player.x,Player.y)) < 768
{
	if bulletTimer<0
	{
		bulletTimer = 3
		var bullet =instance_create_layer(x,y,"Instances",turnedprojectile)
		with(bullet)
		{
			speed = 6;
			direction = point_direction(x,y,Player.x,Player.y)
		}
	}
}