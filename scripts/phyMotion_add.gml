#define phyMotion_add
/// phyMotion_add(len, dir);
/// Motion add
var _len = argument[0], // vector power
    _dir = argument[1]; // vector direction

var _xforce = lengthdir_x(_len, _dir),
    _yforce = lengthdir_y(_len, _dir);

physics_apply_force(x, y, _xforce, _yforce);

#define script2
