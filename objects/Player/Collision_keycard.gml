/// @description Insert description here
// You can write your code in this editor


if carrying = false and keyboard_check_pressed(vk_enter)
{
carrying= true
other.BeingCarryed = true
	
}
else if carrying = true and keyboard_check_pressed(vk_enter)
{
carrying = false
other.BeingCarryed = false
}
