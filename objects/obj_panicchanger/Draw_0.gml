draw_set_alpha(fadealpha);
draw_set_color(c_white);
draw_rectangle(0, 0, __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0), false);
draw_set_alpha(1);
