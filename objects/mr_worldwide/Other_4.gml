/// @description Insert description here
// You can write your code in this editor
background_map = ds_map_create();
background_map[? layer_get_id("background_near")] = 0;
background_map[? layer_get_id("background_mid")] = 0.1;
background_map[? layer_get_id("background_far")] = 0.2;







if room = rm_1_1 or room = rm_1_2
{
audio_play_sound(GreandForest,1,1)	
}
if room = rm_map1
{
	audio_stop_all()
}





if global.checkpoint = 1
{
Player.x = global.reX+64
Player.y = global.reY+96
}

