

draw_set_color(c_black)
draw_set_font(determination_sml)



if instance_exists(Player)
{
if  room!=rm_mainmenu and room != rm_cs1
{
	draw_set_color(c_white)
	draw_sprite_ext(ui_sprite,0,-128,-32,64,4,0,c_white,1)

	draw_text(192,16, "Health: " + string(global.health))
	draw_text(356,16, "Attacks: " + string(global.attack))
	draw_text(512,16, "Coins: " + string(global.coins))
	draw_text(640,16, "Time: " + string(floor(Player.roomtimer)))
	

	
	#region
	draw_set_color(c_red)
	draw_rectangle(192,44,192+32*(global.healthmax+1),44+36,0)
	draw_set_color(c_green)
	draw_rectangle(192,44,192+32*(global.health+1),44+36,0)
	draw_set_color(c_yellow)
	draw_rectangle(192,44,192+32*(global.healthmax+1),44+36,1)
	draw_rectangle(193,45,192+32*(global.healthmax+1)-1,44+35,1)
	draw_rectangle(194,46,192+32*(global.healthmax+1)-2,44+34,1)
	draw_rectangle(195,47,192+32*(global.healthmax+1)-3,44+33,1)
	#endregion
	#region
	draw_set_color(c_dkgray)
	draw_rectangle(356,44,356+32+7*global.attackmax,44+36,0)
	draw_set_color(c_aqua)
	draw_rectangle(356,44,356+32+7*global.attack,44+36,0)
	draw_set_color(c_yellow)
	draw_rectangle(32,228,32+7*global.attackmax,240+36,1)
	draw_rectangle(33,229,31+7*global.attackmax,240+35,1)
	draw_rectangle(34,230,30+7*global.attackmax,240+34,1)
	draw_rectangle(35,231,29+7*global.attackmax,240+33,1)
	#endregion
	
	
	
	
}
draw_set_font(determination)
if global.interact = 1
{
	draw_text(window_get_width()/2.25,window_get_height()/2,"Paused")
	draw_text(window_get_width()/2.5,window_get_height()/1.8,"Esc to Unpause")
	
	
	
}

if global.debug = 1
{
	draw_set_color(roomcolor)
	draw_text(32, 32,"Refill Attack: E")
	draw_text(32, 64,"Refill Health: H")
	draw_text(32,96,"Switch level: N or P")
	draw_text(32, 128, "Level: " + string(room_get_name(room)))
	draw_text(32,160, "Plot_Value: " + string(global.plot_value))
	draw_text(32,192, "Change Plot value: O or L")
	
}
}
