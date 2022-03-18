/// @description Insert description here
// You can write your code in this editor
bulletTimer2 +=1/room_speed
if bulletTimer2 >= 3
{
	sprite_index = flower_enemy
}
else
{
sprite_index = flower_empty
}


if place_meeting(x,y,Player) and bulletTimer2 >= 3
{
var rot = directionline
var fbullet =instance_create_layer(x,y,"Instances",turnedflowerbullet)
{
	with (fbullet)
	directionSet = rot
	
}
bulletTimer2 = 0
}



