/// @description Insert description here
// You can write your code in this editor
attacktimer +=1 
if attacktimer >= 20
{
instance_destroy(self)
}
if Player.dir = 2
{
	x=Player.x+32
	y=Player.y-32
}

if Player.dir = 3
{
	x=Player.x-96
	y=Player.y-32
}