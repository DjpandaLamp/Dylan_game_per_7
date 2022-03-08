if global.interact = 0
{
	image_speed = 1
	TimerCheck()
	CheckInputs()
	vspd = vspd+fallspeed
	if vspd > 12.5 vspd = 12.5
	
if state = States.AttackState
{
	StateAttack()
}
if state = States.IdleState
{
	IdleScript()
}
if state = States.MovingState
{
	StateMoving()
}


    #region //Collision
	CheckCollisionsX()
	CheckCollisionsFX()

	x=x+(hspd)

	CheckCollisionsY()
	CheckCollisionFY()

	y=y+(vspd)
	#endregion
	
	if y>room_height
	{
	   PlayerDeath()  
	}

	if inv_time < 0  effect_clear()

	
	SpriteSet()


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
}
else image_speed = 0





