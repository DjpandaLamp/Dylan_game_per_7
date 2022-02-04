/// @description Insert description here
// You can write your code in this editor
if respawn_timer_set = true
{
	respawn_timer += 1
}

if sprite_index = fallingbricks5_spt
{
	restore_timer +=1	
	
}
else
restore_timer = 0

if place_meeting(x,y-1,Player) and respawn_timer_set!=true and truefall!=true and sprite_index!=fallingbricks4_spt
{
	falling = true	
}
if falling = true
{
	sprite_index = fallingbricks2_spt 
	falling = false
}
if truefall = true
{
	y+=8	
}

if place_meeting(x,y+32,floor3)
{
	sprite_index = fallingbricks4_spt
	truefall = false
	
}