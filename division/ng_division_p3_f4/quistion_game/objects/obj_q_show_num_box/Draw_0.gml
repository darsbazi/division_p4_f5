draw_self();

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_black);

if( num_show == "0/1" )
{
	draw_set_font( font_q_box );
}
else
{
    draw_set_font( font_q_box1 );
}

draw_text( x,y+5,string(num_show) );



if( allow_show_zarb )
{
    draw_sprite(spr_q_zarb,0,x,y-2);	
}

if( allow_to_show_line )
{
	if( mode_flash == 0 )
	{
		draw_sprite(spr_q_flash,0,x+18,y-2);
	}
	else
	{
		draw_sprite(spr_q_flash1,0,x,y+18);
	}	
}

