// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckInputs(){
if keyboard_check(vk_lshift) speed_mult = 2
hspd = ((keyboard_check(vk_right)-keyboard_check(vk_left))*speed_mult*5)

}