/// @description Insert description here
// You can write your code in this editor
pulsetimer +=1/room_speed
speed +=0.01

if pulsetimer > 2
{

direction = point_direction(x,y,Player.x,Player.y)
image_angle = point_direction(x,y,Player.x,Player.y)-270
speed = 6
pulsetimer = 0
	
}
