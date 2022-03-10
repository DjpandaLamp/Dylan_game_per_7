// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateAttack(){


vspd = vspd/2
if global.attack !=0 and !instance_exists(attackhitbox) and attackwait <= 0
{
	attackwait = 10
	global.attack -=1
	if dir = 3
	{
		Attacking = true
		sprite_index = Playerattackleft
		instance_create_depth(x-96,y-32,0,attackhitbox)
	}
	else if dir = 2
	{
		Attacking = true
		sprite_index = Playerattackright
		instance_create_depth(x+32,y-32,0,attackhitbox)
	}
}



if !instance_exists(attackhitbox)
{
Attacking = false	
}
//EXIT STATE
if Attacking = false
{
	state = pstate
}
}