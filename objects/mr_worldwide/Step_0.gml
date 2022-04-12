/// @description Insert description here
// You can write your code in this edi

if !instance_exists(Player_flying)
{
fly_state = false
}
else
{
fly_state = true	
}

if fly_state = false
{
var _cx = camera_get_view_x(view_camera[0]);
var _xspd = 5 * (keyboard_check(vk_right) - keyboard_check(vk_left));
_cx += _xspd
camera_set_view_pos(view_camera[0], _cx, 0);

var _b = ds_map_find_first(background_map);
repeat(ds_map_size(background_map))
    {
    layer_x(_b, background_map[? _b] * _cx);
    _b = ds_map_find_next(background_map, _b);
    }
}






if global.attack > global.attackmax
{
global.attack = global.attackmax	
}
if global.health > global.healthmax
{
global.health = global.healthmax
}



if keyboard_check_pressed(vk_escape)
{
	if global.interact = 1
	{
		global.interact = 0	
	}
	else global.interact = 1
}






#region //coin text
if global.coins < 0
{
	coin_text = "Your Debt: "
	
	
}
else coin_text = "Coins: "
#endregion


#region //background clouds spawner
if global.interact = 0
{
	if fly_state = false
	{
		cloud_timer +=1
		if cloud_timer > cloud_random
		{
			instance_create_depth(room_width,0+random(range),300,Obj_cloud)	
			cloud_timer = 0
			cloud_random = random_range(180,360)
		}
	}

}
#endregion
if keyboard_check_pressed(ord("D"))
{
if global.debug = 1 
{
	global.debug = 0
}
else 
{
global.debug = 1
}
}

if global.debug = 1
{
if keyboard_check_pressed(ord("E"))
	{
	global.attack = global.attackmax	
	}
	if keyboard_check_pressed(ord("H"))
	{
	global.health = global.healthmax	
	}
	if keyboard_check_pressed(ord("O"))
	{
	global.plot_value +=1	
	}
	if keyboard_check_pressed(ord("L"))
	{
	global.plot_value -=1	
	}
	
if keyboard_check_pressed(ord("N"))
{
room_goto_next()
}
if keyboard_check_pressed(ord("P"))
{
	room_goto_previous()
}
	
	
	
	
}
if room = rm_map1
{
roomcolor = c_black
global.checkpoint = 0
}
if room = rm_al
{
roomcolor = c_white
}



