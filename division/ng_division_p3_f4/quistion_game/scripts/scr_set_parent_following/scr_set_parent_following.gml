var get_arr = argument0;
var get_id_parent = argument1;

for( h=0 ; h<array_length_1d(get_arr) ; h++ )
{
	get_arr[h].id_parent = id;
	get_arr[h].XX = get_arr[h].x - get_id_parent.x;
	get_arr[h].YY = get_arr[h].y - get_id_parent.y;
}