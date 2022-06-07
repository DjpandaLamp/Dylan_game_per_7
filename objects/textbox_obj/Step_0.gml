//Step
frame_counter +=1

arrw_opa += arrw_num

set_text = text_array[txpos1,txpos2]



textbox_subimg +=10/room_speed



#region
if box_type = 0 and textbox_subimg > 7
{
box_type = 1	
textbox_subimg = 0
}

if set_text = "EMPTY"
{
box_type = 2

}

if box_type = 2
{
	if endimg = 0
	{
		textbox_subimg = 0	
		endimg = 1
	}
box_type = 3 

}

if box_type = 3 and textbox_subimg > 7 and txpos1 = 3
{
game_end()	
}
else if box_type = 3 and textbox_subimg > 7
{
instance_destroy()	
}
#endregion

if  arrw_opa > 1
{
arrw_num = -(arrw_num)	
	
}
if arrw_opa < 0 
{
arrw_num = -(arrw_num)
	
}


if textbox_subimg > subimg_max
{
textbox_subimg = 0	
}

