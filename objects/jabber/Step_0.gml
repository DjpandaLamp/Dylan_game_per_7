/// @description Insert description here
// You can write your code in this editor
pulsetimer +=1/room_speed


if pulsetimer > 2 and abs(point_distance(x,y,Player.x,Player.y))<768
{

direction = point_direction(x,y,Player.x,Player.y)
image_angle = point_direction(x,y,Player.x,Player.y)-270
speed = 6 +point_distance(x,y,Player.x,Player.y)/1000
pulsetimer = 0
	
}
