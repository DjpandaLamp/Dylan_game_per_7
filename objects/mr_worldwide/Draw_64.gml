

draw_set_color(c_black)
draw_set_font(determination_sml)




if  room!=rm_mainmenu
{
	draw_set_color(c_white)
	draw_sprite_ext(ui_sprite,0,16,518+global.uiPos,7,9,0,c_white,1)
	draw_text(32,566+global.uiPos, "State: " + string(Player.state))
	draw_text(32,598+global.uiPos, "Health: " + string(global.health))
	draw_text(32,534+global.uiPos, "Time: " + string(floor(Player.roomtimer)))
	

	
	#region
	draw_set_color(c_red)
	draw_rectangle(32,630+global.uiPos,192,648+36+global.uiPos,0)
	draw_set_color(c_green)
	draw_rectangle(32,630+global.uiPos,32*global.health,648+36+global.uiPos,0)
	draw_set_color(c_yellow)
	draw_rectangle(32,630+global.uiPos,192,648+36+global.uiPos,1)
	draw_rectangle(33,631+global.uiPos,191,648+35+global.uiPos,1)
	draw_rectangle(34,632+global.uiPos,190,648+34+global.uiPos,1)
	draw_rectangle(35,633+global.uiPos,189,648+33+global.uiPos,1)
	#endregion
	#region
	draw_set_color(c_dkgray)
	draw_rectangle(32,694+global.uiPos,192,702+36+global.uiPos,0)
	draw_set_color(c_aqua)
	draw_rectangle(32,694+global.uiPos,32+8*global.attack,702+36+global.uiPos,0)
	draw_set_color(c_yellow)
	draw_rectangle(32,694+global.uiPos,192,702+36+global.uiPos,1)
	draw_rectangle(33,695+global.uiPos,191,702+35+global.uiPos,1)
	draw_rectangle(34,696+global.uiPos,190,702+34+global.uiPos,1)
	draw_rectangle(35,697+global.uiPos,189,702+33+global.uiPos,1)
	#endregion
	
	
	
	
}
draw_set_font(determination)
if global.interact = 1
{
	draw_text(window_get_width()/2.25,window_get_height()/2,"Paused")
	draw_text(window_get_width()/2.5,window_get_height()/1.8,"Esc to Unpause")
	
	
	
}
