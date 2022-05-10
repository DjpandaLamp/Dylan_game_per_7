/// @description Insert description here
// You can write your code in this editor
if sprite_set = 0 
{
sprite_index = player_hurt_partical_1
}
else if sprite_set = 1
{
sprite_index = player_hurt_partical_2


}
else if sprite_set = 2
{
	
sprite_index = player_hurt_partical_3
}

	vspd = vspd+fallspeed
	if vspd > 12.5 vspd = 12.5
	
	x=x+hspd
	y=y+vspd
