// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function IdleScript(){

if instance_exists(Player)
	{
		if dir = 3
		{
			{
				sprite_index = playeridleleft
			}
		}
		else if dir = 2
			{
				sprite_index = playeridleright
			}
	

	//exit state
	if keyboard_check_pressed(vk_control) and global.attack > 0
	{
	pstate = state
	state = States.AttackState
	}


	if keyboard_check(vk_right) or keyboard_check(vk_left) 
	{	
		moving = true	
	}
	if keyboard_check(vk_up) 
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
	
	if moving = true
	{
		state = States.MovingState	
	}
	}
}