global.font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.0123456789:", true, 0);
global.smallfont = font_add_sprite_ext(spr_smallfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", true, 0);
global.combofont = font_add_sprite_ext(spr_fontcombo, "0123456789", true, 0);
global.collectfont = font_add_sprite_ext(spr_fontcollect, "0123456789", true, 0);
global.shellactivate = false;
global.showcollisions = false;
global.fartcounter = 0; // :fear:
global.ParallaxArray = -4;
global.ParallaxArraynumber = 0;
scr_default_parallax(true);
global.FollowerList = ds_list_create();
global.mallowfollow = false;
global.crackfollow = false;
global.chocofollow = false;
global.wormfollow = false;
global.candyfollow = false;
global.__rousr_dissonance = noone;