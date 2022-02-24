TimerCheck()
CheckInputs()
StateMoving()
    
CheckCollisionsX()
CheckCollisionsFX()

x=x+(hspd)

CheckCollisionsY()
CheckCollisionFY()

y=y+(vspd)

if y>room_height
{
   PlayerDeath()  
}

if inv_time < 0  effect_clear()

StateAttack()
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