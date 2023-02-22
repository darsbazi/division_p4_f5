draw_self();
draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_set_font(font_label_show_answer);
 
XXX = 3;

switch( image_index )
{
	case 0:
	   draw_set_color(COLO1);
	break;
	case 1:
	   draw_set_color(COLO2);
	break;
	case 2:
	   draw_set_color(COLO3);
	break;
}

if(number_show[1] != 0)
{
	draw_text( x-XXX,y+10,string(number_show[0])+"/"+string(number_show[1]));
	draw_set_color( c_white );
	draw_text( x,y+10,string(number_show[0])+"/"+string(number_show[1]));
}
else
{
	draw_text( x-XXX,y+10,string(number_show[0]));
	draw_set_color( c_white );
	draw_text( x,y+10,string(number_show[0]));
}

draw_set_alpha(1);


//draw_text( x,y+50,string( currect_incurrect ));
