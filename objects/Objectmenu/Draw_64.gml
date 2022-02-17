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
        draw_text(space*5,space*6+y,"Load Game")    
    }
    if selected_text=2
    {
        draw_text(space*5,space*7+y,"Settings") 
    }
    if selected_text=3
    {
        draw_text(space*5,space*8+y,"BLANK ENTRY")  
    }
    if selected_text=4
    {
        draw_text(space*5,space*9+y,"BLANK ENTRY")  
    }
    if selected_text=5
    {
        draw_text(space*5,space*10+y,"Exit Game")   
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
        draw_text(space*5,space*6,"Load Game")  
    }
    if selected_text!=2
    {
        draw_text(space*5,space*7,"Settings")   
    }
    if selected_text!=3
    {
        draw_text(space*5,space*8,"BLANK ENTRY")    
    }
    if selected_text!=4
    {
        draw_text(space*5,space*9,"BLANK ENTRY")    
    }
    if selected_text!=5
    {
        draw_text(space*5,space*10,"Exit Game") 
    }
    #endregion
 
}