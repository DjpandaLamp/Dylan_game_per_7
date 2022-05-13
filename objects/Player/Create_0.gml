if room = rm_cs1
{
roomtimer = 5000000000000000000000000
	
}
else
{
roomtimer = 200
}


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
attackwait = 10
uishift = 0
JumpTime = 0
falltime = 4

stepcount = 0

step_length = 0

on_ground = true

fox_timer = 0
fox_max = 6

buffer_timer = 0 //current buffer
buffer_max = 5 //What buffer is set when input

carrying = false
CarryingWhat = ""
enum States 
{
	IdleState,
	MovingState,
	AttackState,
	JumpingState,
}

state_array[States.IdleState] = IdleScript
state_array[States.AttackState] = StateAttack
state_array[States.MovingState] = StateMoving


sprite_array[States.IdleState] = playeridleright
sprite_array[States.AttackState] = Playerattackright
sprite_array[States.MovingState] = playerrunright


state = States.MovingState
pstate = 0

if !instance_exists(level_transtion)
{
	instance_create_depth(0,0,0,level_transtion)
	
}
