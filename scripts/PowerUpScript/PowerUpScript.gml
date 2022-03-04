// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PowerUpScript(arg1){

	if arg1 = 0
	{
	HealthRestore()
	}
	if arg1 = 1
	{
	AttackRestore()
	}
	if arg1 = 2
	{
	HealthUp()
	}
	if arg1 = 3
	{
	 AttackUp()
	}
	if arg1 = 4
	{
	HealthDown()
	}
	if arg1 = 5
	{
	AttackDown()
	}

}


function HealthRestore(){
	global.health = global.healthmax	
}

function AttackRestore(){
	
	global.attack = global.attackmax
}

function HealthUp(){
	
	global.healthmax +=1
}

function AttackUp(){
	
	global.attackmax +=5
}

function HealthDown(){
	
		global.healthmax -=1
}

function AttackDown(){
	
		global.attackmax -=5
}