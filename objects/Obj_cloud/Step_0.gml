if global.interact = 0
{
x -=1+(rspeed)

if x < -96
{
	instance_destroy(self)
}
if y < -96
{
	instance_destroy(self)
}
}