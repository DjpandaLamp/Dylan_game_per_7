tallyscore +=1/room_speed

if global.interact = 0
{
	image_speed = 1
}
else image_speed = 0


if tallyscore > 12
{
	if keyboard_check_pressed(vk_enter)
	{
		level_transtion.RoomTo = rm_map1
		level_transtion.fadeout = true
	}
	
}



