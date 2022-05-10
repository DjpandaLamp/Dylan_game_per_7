/// @description Insert description here
// You can write your code in this editor
//if shark = true
//{
//	shark_leng -=1
//	var _xval = choose(-shark_for,shark_for)
//	var _yval = choose(-shark_for,shark_for)
//	camera_set_view_pos(view_camera[0], _xval, _yval)
//	
//	if shark_leng <=0
//	{
//	shark = false
//	shark_leng = 5
//	}
//}
//else if shark = false
//{
//}


if (shake) 
{ 
     shake_time -= 1; 
     var _xval = choose(-shake_magnitude, shake_magnitude); 
     var _yval = choose(-shake_magnitude, shake_magnitude); 
     camera_set_view_pos(view_camera[0], _xval, _yval); 

   if (shake_time <= 0) 
   { 
     shake_magnitude -= shake_fade; 

     if (shake_magnitude <= 0) 
     { 
         camera_set_view_pos(view_camera[0], 0, 0); 
         shake = false; 
      } 
   } 
}
