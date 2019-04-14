/// rpgValue_drawValue();
var _x = x,
    _y = y - 44 + zDepth_get_z();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_sprite(sprite4, 0, _x - 7, _y);
draw_set_colour(c_red);
draw_sprite(sprite4, 0, _x + 7, _y);
draw_set_colour(c_white);


var _per = rpgVal_hp/rpgVal_hpMax,
    _per2 = (rpgVal_hp-rpgVal_hpMax*0.3)/(rpgVal_hpMax-rpgVal_hpMax*0.3),
    _colour = make_colour_hsv(80*_per2, 255, 255);

draw_sprite_general(
    sprite4, 0,
    0, 12 - _per*12, 12, _per*12,
    _x + 7 - 6, _y - 6 + 12 - _per*12, 1, 1, 0,
    _colour, _colour, _colour, _colour, 1);

draw_set_colour(c_black);
draw_text_transformed(
    _x - 7, _y, rpgVal_atk,
    0.5, 0.5, 0);
draw_text_transformed(
    _x + 7, _y, rpgVal_hp,
    0.5, 0.5, 0);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
