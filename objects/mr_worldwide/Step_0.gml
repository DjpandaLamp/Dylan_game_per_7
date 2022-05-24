/// @description Insert description here
// You can write your code in this edi
#region //level texts
if room = rm_cs1 or rm_mainmenu
{
leveltext = "If you see this you have discovered an error"	
}
if room = rm_al
{
leveltext = "1-0"
}
if room = rm_map1
{
leveltext = "1-map"
}
if room = rm_1_1 or rm_1_fly
{
leveltext = "1-1"	
}
if room = rm_1_2
{
leveltext = "1-2"
}
#endregion


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
	var _xspd = 5 * (keyboard_check(ord("D")) - keyboard_check(ord("A")));
	_cx += _xspd
	camera_set_view_pos(view_camera[0], _cx, 0);

	var _b = ds_map_find_first(background_map);
	repeat(ds_map_size(background_map))
	    {
	    layer_x(_b, background_map[? _b] * _cx);
	    _b = ds_map_find_next(background_map, _b);
	    }
	}	

if (shake) 
{ 
     shake_time -= 1; 
     var _xval = choose(-shake_magnitude, shake_magnitude); 
     var _yval = choose(-shake_magnitude, shake_magnitude); 
     camera_set_view_pos(view_camera[0], _xval+_cx, _yval); 

   if (shake_time <= 0) 
   { 
     shake_magnitude -= shake_fade; 

     if (shake_magnitude <= 0) 
     { 
         camera_set_view_pos(view_camera[0], _cx, 0); 
         shake = false; 
      } 
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



if keyboard_check_released(vk_escape)
{
	if paused = true
	{
	paused = false
	}
	else
	{
	paused = true
	}
}

if paused = true
{
	global.interact = 1
}
else
{
	global.interact = 0
}




#region //coin text
if global.coins < 0
{
	coin_text = "Your Debt: "
	
	
}
else coin_text = "Coins: "
#endregion



if keyboard_check_pressed(ord("T"))
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
	audio_stop_all()
room_goto_next()
}
if keyboard_check_pressed(ord("P"))
{
	audio_stop_all()
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


if global.shownhealth !=global.health
{
global.shownhealth = approach(global.shownhealth,global.health,0.05)		
}
if global.shownattack !=global.attack
{
global.shownattack = approach(global.shownattack,global.attack,0.05)		
}


