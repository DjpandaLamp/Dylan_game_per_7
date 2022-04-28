// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateMoving(){
if instance_exists(Player)
{
	JumpTimer = 0
	hspd = ((keyboard_check(vk_right)-keyboard_check(vk_left)))*5

if keyboard_check_pressed(vk_up) 
    {
       
        moving = true
        if on_ground = true 
        {
            vspd = jumpspeed
        }
        else
        {
            buffer_timer = buffer_max
        }
        
        if jump = false and fox_timer > 0 and on_ground = false
        {
            vspd = jumpspeed
        }
            
    }
	  
	 
  
  
  
	if on_ground and buffer_timer > 0 
	{
	vspd = jumpspeed    
	}

	moving = false

	if keyboard_check(vk_right) 
	    {
	        dir = 2
	        moving = true        
	    }
	if keyboard_check(vk_left) 
	    {
	        dir = 3
	        moving = true
	    } 
	if place_meeting(x,y+1,floor3) 
	    {
	    on_ground = true
	    jump = true
	    }

	if on_ground 
	{
	    jump = false
	    fox_timer = fox_max
	}


	if keyboard_check_pressed(vk_control) and global.attack > 0
	{
	pstate = state
	state = States.AttackState
	}



	//Exit State
	if !keyboard_check(vk_up) and !keyboard_check(vk_right) and !keyboard_check(vk_left) 
	{	
	state = States.IdleState	
	}

	
	}	
}

