// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function approach(arg0,arg1,arg2){
/// approach(start, end, shift). thanks for the code :)

if(arg0 < arg1){
    return min(arg0 + arg2, arg1); 
}else{
    return max(arg0 - arg2, arg1);
}
}