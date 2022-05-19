
function Playerhurt(){
if !Player.inv_time > 0
{
	effect_create_above(ef_explosion,Player.x,Player.y,64,c_red)
	Player.inv_time = 2;
	
	global.health -=1
	screenshake(room_speed/3,10,.5)
	
	repeat random_range(5,20)
	{
	instance_create_depth(x,y,0,player_pieces)
		
	}
	
	
	if global.health < 1
	{
	PlayerDeath()
	}
}






}

function PlayerDeath(){

	global.coins = global.coins - 5
	global.points = global.points - 200
	global.health = global.healthmax
	global.attack = global.attackmax
	sprite_index = Placeholder_blank_sprite
	level_transtion.RoomTo = room
	level_transtion.fadeout = true
	
	
	audio_stop_all()
}
