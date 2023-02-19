draw_self();
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_white);
if(flag_draw) {
	draw_sprite(spr_division,0,x+20,y+2);
	draw_text(x-40,y+8,string(label_answer[0]) );
	draw_text(x+10,y+8,string(label_answer[1]));
}