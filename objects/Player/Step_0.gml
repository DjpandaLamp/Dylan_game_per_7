if global.interact = 0
{
	

	
	image_speed = 1
	TimerCheck()
	CheckInputs()
	vspd = vspd+fallspeed
	if vspd > 12.5 vspd = 12.5
	
	script_execute(state_array[state])
	

    #region //Collision
	CheckCollisionsX()
	CheckCollisionsTX()
	CheckCollisionsFX()

	x=x+(hspd)

	CheckCollisionsY()
	CheckCollisionsTY()
	CheckCollisionFY()

	y=y+(vspd)
	#endregion
	
	if y>room_height
	{
	   PlayerDeath()  
	}

	if inv_time < 0  effect_clear()

	

if dir = 3 
{
image_xscale = -1	
}
else
{
image_xscale = 1	
}

	if x < 300
	{
	    global.uiPos = -400
	}
	else
	{
	    global.uiPos = 0
	}
	if y < 400
	{
		 global.uiPos = 0
	}
	
	
	sprite_index = sprite_array[state]
}
else image_speed = 0





