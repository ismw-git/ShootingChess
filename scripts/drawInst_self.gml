#define drawInst_self
/// drawInst_self();


draw_shadow();
draw_sprite(sprite_index, image_index, x, y+zDepth_get_z());

#define draw_shadow
/// draw_shadow();

draw_sprite_ext(sprite0, 0, x, y + zDepth_get_floor(), 1, 1, phy_rotation, c_white, 0.4);