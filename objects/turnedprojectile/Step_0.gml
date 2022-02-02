movetime=+1
if movetime >= 30 
{
if dire = 0
{
	dire = 1
}
if dire = 1 
{
	dire = 0
}
movetime = 0
}
if dire = 0 
{
x=x-3
}
else
{
x=x+3	
}