global.uiPos = 0
global.plot_value = 0
global.health = 6
global.healthmax = 6
global.attack = 20
global.attackmax = 20
global.coins = 0
global.points = 0
global.menu = 0
global.interact = 0
coin_text = "Coins: "
cloud_spawning = false	
cloud_timer = 0
cloud_random = random_range(120,170)
cloud_chance = random(1)
blaze_check = "Ready"
range=192
game_set_speed(60, gamespeed_fps);
randomize()

ini_open("datafiles/savedata.ini")
{
	ini_write_string("test2", "section", "Welcome");
	ini_close()
}