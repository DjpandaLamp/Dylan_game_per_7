/// @description turned colision 

if inv_time < 0
{
	if blaze = true
	{
		instance_destroy(other)
	}
	else
	{
		global.health -= 1
		effect_create_above(ef_ellipse,x,y,64,c_aqua)

	}
}
