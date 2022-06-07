draw_set_font(determination)
draw_set_color(c_white)

if box_type = 0
{
draw_sprite(textboxstart_spr,textbox_subimg,0,window_get_height()-320)
subimg_max = 8

}

if box_type = 1
{
	draw_sprite(textbox_spr,textbox_subimg,0,window_get_height()-320)
	draw_text_scrolling(64,512,set_text,0.5,30,test_test_sound)
	subimg_max = 5

	if keyboard_check_pressed(vk_right) and _text_char =string_length(set_text)
	{
		draw_text_reset()
		txpos2 +=1
	}
	else if keyboard_check_pressed(vk_right) and _text_char !=string_length(set_text)
	{
		draw_text_skip()
	}


}

if box_type = 3
{
draw_sprite(textboxend_spr,textbox_subimg,0,window_get_height()-320)
subimg_max = 7

}

