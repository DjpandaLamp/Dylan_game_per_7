/// @description Insert description here
// You can write your code in this editor

if sprite_index = locked_door
{
instance_destroy(other)
Player.carrying = false
other.BeingCarryed = false
Player.CarryingWhat = ""
sprite_index = unlocking_door
}
