/// @description Insert description here
// You can write your code in this editor
draw_text(320,320,"Enemies Slain: "+string(global.EnemiesSlain) + " X 200 = " + string(200*global.EnemiesSlain))
draw_text(320,356,"Coins Gathered: "+string(global.coins) + " X 100 = " + string(200*global.coins))
draw_text(320,388,"Total score: " + (string((200*global.coins)+(200*global.EnemiesSlain))))



