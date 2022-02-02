// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHurt(){
if !other.isInvincible
{
	other.isInvincible = true;
	
	other.hp -=1
	
	if other.hp <1
	{
	EnemyDeath()
	}
}






}

function EnemyDeath(){
instance_destroy(other)
global.coins +=1
}