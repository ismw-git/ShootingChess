#define drawInst_initialize
/// drawInst_initialize();

drawInst_xsc = 1;
drawInst_ysc = 1;

drawInst_xsc_val = 0;
drawInst_ysc_val = 0;

drawInst_spd = 0;


drawInst_tictocChecker = false;

#define drawInst_self
/// drawInst_self();


draw_shadow();

if (tictocSystem_checkRhythm(1)) drawInst_spd = irandom(10)*10;

drawInst_xsc += drawInst_spd/1000;
drawInst_ysc -= drawInst_spd/2000;
if (drawInst_xsc > 1){
    drawInst_spd -= 10;
} else if (drawInst_xsc > 1) drawInst_spd += 10;
drawInst_spd /= 1.2;

draw_sprite_ext(sprite_index, image_index, x, y+zDepth_get_z(),
    drawInst_xsc, drawInst_ysc, 0, c_white, 1);

#define draw_shadow
/// draw_shadow();

draw_sprite_ext(sprite0, 0, x, y + zDepth_get_floor(), 1, 1, phy_rotation, c_white, 0.4);