/// @description Insert description here
// You can write your code in this editor
if room = rm_mainmenu
{
    t = (t + increment) mod 360;
    shift = amplitude * dsin(t);
 
 
    yy += vspeed;
    y = yy + shift;
 
    if keyboard_check_pressed(vk_up)
    {
        selected_text -=1   
    }
    if keyboard_check_pressed(vk_down)
    {
        selected_text +=1
    }
    if keyboard_check_pressed(vk_right) and room=rm_mainmenu
    {
        if selected_text=0
        {
           level_transtion.RoomTo = rm_cs1
		   level_transtion.fadeout = true
        }
        if selected_text=1
        {
            game_end()
        }
    }
	plane_sprite +=12/room_speed
	if plane_sprite >= 4
	{
	plane_sprite = 0	
	}
	
}

