/// @description Insert description here
// You can write your code in this editor
stimer+=10/room_speed

if directionSet = 0
{
y=y-stimer
}
if directionSet = 1
{
x=x+stimer
}
if directionSet = 2
{
y=y+stimer
}
if directionSet = 3
{
x=x-stimer
}

if y < 0 
{
instance_destroy(self)	
}