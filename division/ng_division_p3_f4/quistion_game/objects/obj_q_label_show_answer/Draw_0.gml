draw_self();

draw_set_color( c_black );
draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_set_font(font_label_show_answer);

draw_text( x,y+10,string(number_show[0])+"/"+string(number_show[1]));


draw_text( x,y+100,string(currect_incurrect));

draw_set_alpha(1);
