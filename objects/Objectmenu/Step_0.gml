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
    if keyboard_check_pressed(vk_enter) and room=rm_mainmenu
    {
        if selected_text=0
        {
           level_transtion.RoomTo = rm_cs1
		   level_transtion.fadeout = true
        }
        if selected_text=5
        {
            game_end()
        }
    }
}

