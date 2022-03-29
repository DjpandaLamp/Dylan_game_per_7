/// @description Insert description here
// You can write your code in this editor
if room = rm_1_1
{
audio_play_sound(ThePlane,1,1)	
}
else if room = rm_map1
{
	audio_stop_all()
}
if global.checkpoint = 1
{
Player.x = global.reX+64
Player.y = global.reY+96
}

