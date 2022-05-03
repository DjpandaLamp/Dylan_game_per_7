/// @description Insert description here
// You can write your code in this edit

if fadeout = 0
{
	global.imgA = clamp(global.imgA - 0.01, 0, 1.1);
}
else
{
	audio_stop_all()
	global.imgA = clamp(global.imgA + 0.01, 0, 1.1);
}

if global.imgA >= 1.1
{
	audio_stop_all()
	fadeout = 0
	room_goto(RoomTo)
 
}

if global.imgA != 0 and fadeout = 1 
{
	global.interact = 1	
	
}

else if global.imgA = 0.01 and fadeout = 0
{
	global.interact = 0	
	
}