/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
if tallyscore > 5
{
draw_text(320,320,"Enemies Slain: "+string(global.EnemiesSlain) + " X 200 = " + string(200*global.EnemiesSlain))
}

if tallyscore > 7
{
draw_text(320,356,"Coins Gathered: "+string(global.coins) + " X 100 = " + string(200*global.coins))
}

if tallyscore > 10
{
draw_text(320,388,"Total score: " + (string((200*global.coins)+(200*global.EnemiesSlain))))
}

if tallyscore > 12
{
draw_text(320,480,"Press Enter to Continue")
}

