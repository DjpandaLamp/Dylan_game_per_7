
function Playerhurt(){
if !Player.inv_time > 0
{
	effect_create_above(ef_explosion,Player.x,Player.y,64,c_red)
	Player.inv_time = 2;
	
	global.health -=1
	
	if global.health < 1
	{
	PlayerDeath()
	}
}






}

function PlayerDeath(){

	global.coins = global.coins - 5
	global.points = global.points - 200
	global.health = 6
	room_restart()
}
