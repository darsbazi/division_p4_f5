var num = argument0;
var _min = argument1;
var _max = argument2;

var num_min = 0;
var num_max = 0;

//show_message(not_biger);

if( num -_min <=1  )
{
	
	
	num_min =1;
	num_max = ((num-_min)*-1) + _max+num+1;
}
else
{	
    num_min = num - _min;
    num_max = num + _max;
}


for( s=0 ; s<1 ; s++ )
{
	number_return = irandom_range( num_min , num_max );
	
	if( number_return == num || number_return < 1 ||  number_return >= 10 )
	{
		s-=1;
	}
}



return number_return;