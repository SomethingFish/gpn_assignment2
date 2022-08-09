var half_width = w * 0.5;

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-half_width-border, y-h-(border*2), x+half_width+border,y,15,15,false);
draw_set_color(c_blue);
draw_roundrect_ext(x-half_width-border-2, y-h-(border*2)-2, x+half_width+border+2,y+2,15,15,false);
draw_set_alpha(1);

DrawSetText(c_white, fSignpost, fa_center, fa_top);
draw_text(x, y-h-border, text_current);