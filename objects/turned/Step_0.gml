if idlego = true and idle < 180
{
 idle += 1
}

if idle = 180
{
	idlego = false
	idle = 0
	sprite_index = Enemy_Blast
}
if idlego = false and blast < 180
{
	blast += 1	
}
if blast = 180
{
	idlego = true
	blast = 0
	sprite_index = enemy_idle
}