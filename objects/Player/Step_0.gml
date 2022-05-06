if global.interact = 0
{
	sprite_index = sprite_array[state]

	if sprite_index = PlayerJumpStart and image_index = 6
	{
	image_speed = 0
	}
	else
	{
	image_speed = 1
	}
	
	
	TimerCheck()
	CheckInputs()
	vspd = vspd+fallspeed
	if vspd > 12.5 vspd = 12.5
	
	script_execute(state_array[state])
	

    #region //Collision
	CheckCollisionsX()
	CheckCollisionsTX()
	CheckCollisionsFX()
	CheckCollisionsDX()
	x=x+(hspd)

	CheckCollisionsY()
	CheckCollisionsTY()
	CheckCollisionFY()
	CheckCollisionsDY()
	y=y+(vspd)
	#endregion
	
	if y>room_height
	{
	   PlayerDeath()  
	}

	if inv_time < 0  effect_clear()

	if place_meeting(x,y+1,floor3) or place_meeting(x,y+1,turned_totorial) or place_meeting(x,y+1,fallingbricksObj)
	{
	sprite_array[States.IdleState] = playeridleright
	sprite_array[States.MovingState] = playerrunright
	
	}
	else
	{
	sprite_array[States.MovingState] = PlayerMidJump
	sprite_array[States.IdleState] = PlayerMidJump
	}
if dir = 3 
{
image_xscale = -1	
}
else
{
image_xscale = 1	
}

	
	
	if carrying = true and keyboard_check_pressed(vk_enter)
	{
	carrying = false
	var cint = CarryingWhat
	cint.BeingCarryed = false
	CarryingWhat = ""
	}
	
	
	
}
else image_speed = 0









