
if global.interact = 0
{
	image_speed = 1
if(place_meeting(x+(hspd),y, floor3))
{
		hspd = -hspd
		turntimer = 2.5
}

x=x+(hspd)





y=y+(vspd)

turntimer -=1/room_speed
if turntimer <0
{
	turntimer = 2.5
hspd = -hspd	
}
}
else image_speed = 0
