draw_self();

if( get_brode_id != 0 )
{
	draw_set_color(COLOR2);
	draw_rectangle( x+30 , y+sprite_height/2-1 , get_brode_id.x-30 ,get_brode_id.y-sprite_height/2 , false );
	
	draw_set_color(COLOR1);
	XXX = 5
	draw_rectangle( x+30 , y+sprite_height/2-XXX , get_brode_id.x-30 ,get_brode_id.y-sprite_height/2+XXX-1  , false );
}