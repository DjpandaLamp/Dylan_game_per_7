/// @description Insert description here
// You can write your code in this editor
if global.interact = 0
{
	
	
	
	if other.hidden_flag = 0
	{
		if keyboard_check_pressed(vk_enter) and global.plot_value+1 = other.world_value
		{
			if other.flag_type = 1
			{
				global.plot_value = other.world_value
			}
			var rm = asset_get_index(other.room_name)
			level_transtion.RoomTo = rm
			level_transtion.fadeout = true
		}
	}
	else
	{
			if other.flag_type = 1
			{
				global.plot_value = other.world_value
			}
			var rm = asset_get_index(other.room_name)
			level_transtion.RoomTo = rm
			level_transtion.fadeout = true
	}



}

