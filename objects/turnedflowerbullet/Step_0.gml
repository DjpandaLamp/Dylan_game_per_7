/// @description Insert description here
// You can write your code in this editor
stimer+=10/room_speed

if directionSet = 0
{
y=y-stimer
image_angle = 0
}
if directionSet = 1
{
x=x+stimer
image_angle = 270
}
if directionSet = 2
{
y=y+stimer
image_angle = 180
}
if directionSet = 3
{
x=x-stimer
image_angle = 90
}

if y < 0 
{
instance_destroy(self)	
}