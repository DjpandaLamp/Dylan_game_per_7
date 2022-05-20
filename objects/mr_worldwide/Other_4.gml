/// @description Insert description here
// You can write your code in this editor
background_map = ds_map_create();
background_map[? layer_get_id("background_near")] = 0;
background_map[? layer_get_id("background_mid")] = 0.1;
background_map[? layer_get_id("background_far")] = 0.2;







if room = rm_1_1 or room = rm_1_2
{
audio_play_sound(GreandForest,1,99)	
}
if room = rm_map1
{
audio_play_sound(PlainsAndPlanes,1,99)	
global.checkpoint = 0
global.health = global.healthmax
global.attack = global.attackmax

}
if room = rm_1_fly
{
audio_play_sound(LevelComplete,1,0)	
}





if global.checkpoint = 1
{
Player.x = global.reX+64
Player.y = global.reY+96
}

