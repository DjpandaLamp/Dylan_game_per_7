/// @description Insert description here
// You can write your code in this editor
if sprite_index = fallingbricks2_spt
{
	sprite_index = fallingbricks3_spt
	truefall = true	
}



if sprite_index = fallingbricks4_spt
{
	respawn_timer_set = true
	sprite_index = fallingbricks6_spt
	y = ystart
	x = xstart
}


if sprite_index = fallingbricks6_spt and respawn_timer >= 90
{
	sprite_index = fallingbricks5_spt
}


if sprite_index = fallingbricks5_spt and restore_timer >= 60
{
	respawn_timer_set = false
	respawn_timer = 0
	sprite_index = fallingbricks1_spt	
}