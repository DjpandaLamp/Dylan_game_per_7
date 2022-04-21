// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TimerCheck(){
	//Timers
	if room = rm_1_fly
	{
	}
	else
	{
	roomtimer -= 1.5/room_speed
	buffer_timer -=1
	inv_time -=1/room_speed
	attackwait -=1
	JumpTime +=1/room_speed
	
	fallspeed = .75
	fox_timer -=1
	}
	//Level Timer
	if roomtimer < 0 
	{
		PlayerDeath()
	}


}

