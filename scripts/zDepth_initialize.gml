#define zDepth_initialize
/// zDepth_initialize();

zDepth_z = 0;
zDepth_zspd = 0;

zDepth_floor = 0;
zDepth_gravity = 0.2;

#define zDepth_update
/// zDepth_update();


zDepth_z += zDepth_zspd
if (zDepth_z >= zDepth_floor) {
    zDepth_z = zDepth_floor;
    zDepth_zspd = 0;
} else {
    zDepth_zspd += zDepth_gravity;
}

#define zDepth_set_zspd
/// zDepth_set_zspd(zspd);


var _spd = argument[0];

zDepth_zspd = _spd;

#define zDepth_set_floor
/// zDepth_set_floor(z);

zDepth_floor = argument[0];

#define zDepth_get_z
/// zDepth_get_z();

return zDepth_z;

#define zDepth_get_floor
/// zDepth_get_floor();

return zDepth_floor;

#define zDepth_isOnFloor
/// zDepth_isOnFloor();

var _return = false;

if (zDepth_z >= zDepth_floor) _return = true;

return _return;