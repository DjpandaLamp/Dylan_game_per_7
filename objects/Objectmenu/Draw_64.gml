/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red)
draw_set_font(determination_sml)

if room = rm_mainmenu
{
    #region //Yellow text
    if selected_text=0
    {
        draw_text(space*5,space*5+y,"New Game") 
    }
  
    
    if selected_text=1
    {
        draw_text(space*5,space*6+y,"Exit Game")   
    }
    
    #endregion
    
    draw_set_color(c_black)
 
    #region //White Text
    if selected_text!=0
    {
        draw_text(space*5,space*5,"New Game")   
    }
  
    if selected_text!=1
    {
        draw_text(space*5,space*6,"Exit Game") 
    }
    #endregion
	draw_sprite(player_plane_day,plane_sprite,600,500)
}
