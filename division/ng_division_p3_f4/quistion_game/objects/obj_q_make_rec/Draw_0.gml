help_offcet = 2;
XX_offcet = 30/2+help_offcet ;
YY_offcet = 30/2+help_offcet ;

for( i=0 ; i<4 ; i++ )
{
	if( i%2 != 0 )
	{
		draw_set_color(c_black);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_rectangle( get_arr[0].x-XX_offcet-i , get_arr[1].y-YY_offcet-i , get_arr[2].x+XX_offcet+i , get_arr[3].y+YY_offcet+i , true );
}
if( flag_read_code )
{
    flag_read_code = true;
	
	draw_sprite( spr_q_flash12 , 0 , get_arr[0].x-24 , get_arr[0].y+18 );
}


