/// @description Insert description here
// You can write your code in this editor


if room=end_room
{
instance_destroy(mr_worldwide)	
}
sprite_index = image_convert
if keyboard_check(vk_enter)
{
game_end()	
}
