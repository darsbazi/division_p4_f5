draw_self();

draw_set_alpha(image_alpha);

draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_set_color(COLOR);
draw_set_font( font_q_label_show_quistion );

draw_text( x-37 , y+8 ,string(num_1));
draw_text( x+37 , y+8 ,string(num_2));

draw_text( x-37 , y+50 ,string(num_3));
draw_text( x+37 , y+50 ,string(num_4));



image_index = mode;