roomtimer = 500
jump = true
moving = false
Attacking = false
friction = 2
dir = 1
vspd = 0
hspd = 0
speed_mult = 1
fallspeed = 0
jumpspeed = -16
inv_time = 0


on_ground = true

fox_timer = 0
fox_max = 6

buffer_timer = 0 //current buffer
buffer_max = 5 //What buffer is set when input



enum States 
{
	IdleState,
	MovingState,
	JumpingState,
	AttackState,
}

State1 = States.IdleState
State2 = States.IdleState