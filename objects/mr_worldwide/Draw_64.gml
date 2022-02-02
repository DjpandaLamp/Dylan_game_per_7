

draw_set_color(c_white)
draw_set_font(determination_sml)




if room = rm_mainmenu
{
	draw_set_font(determination)
	draw_text(room_width/3,360, "The Saga of Rizado")
	draw_set_font(determination_sml)
	draw_text(520,432, "Use N and P to swich rooms")
	draw_text(520,464, "Use ENTER key on flags to enter levels")
}
else
{
	draw_sprite_ext(ui_sprite,0,16,518+global.uiPos,7,7,0,c_white,1)
	draw_text(32,598+global.uiPos, coin_text + string(global.coins))
	draw_text(32,630+global.uiPos, "Health: " + string(global.health))
	draw_text(32,566+global.uiPos, "Time: " + string(floor(Player.roomtimer)))
	
	draw_set_color(c_red)
	draw_rectangle(32,662+global.uiPos,192,648+78+global.uiPos,0)
	draw_set_color(c_green)
	draw_rectangle(32,662+global.uiPos,32*global.health,648+78+global.uiPos,0)
	draw_set_color(c_yellow)
	draw_rectangle(32,662+global.uiPos,192,648+78+global.uiPos,1)
	draw_rectangle(33,663+global.uiPos,191,648+77+global.uiPos,1)
	
	draw_rectangle(34,664+global.uiPos,190,648+76+global.uiPos,1)
	draw_rectangle(35,665+global.uiPos,189,648+75+global.uiPos,1)
	
	
	
	draw_set_color(c_white)
	if Player.blaze_timer < 0
	{
		draw_text(32,534+global.uiPos, "Attack: Ready")
	}
	else
	{
		draw_text(32,534+global.uiPos, "Attack: " + string(blaze_check) + "'s")
	}
	
	
	

	

}
