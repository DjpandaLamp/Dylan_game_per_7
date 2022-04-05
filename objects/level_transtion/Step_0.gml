/// @description Insert description here
// You can write your code in this edit

if fadeout = false
{
global.imgA = clamp(global.imgA - 0.01, 0, 1.1);
}
else
{
global.imgA = clamp(global.imgA + 0.01, 0, 1.1);
}

if global.imgA >= 1.1
{
	fadeout = false
 room_goto(RoomTo)
 
}

if global.imgA != 0
{
global.interact = 1	
	
}
else
{
global.interact = 0	
	
}