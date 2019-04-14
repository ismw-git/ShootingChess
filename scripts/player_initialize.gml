#define player_initialize
/// player_initialize();

// chess initial
chess_intialize();

// input data
pressed = false;
dir = 0;

#define player_update
/// player_update();

// input keyboard
var _up = keyboard_check(ord('W')),
    _down = keyboard_check(ord('S')),
    _left = keyboard_check(ord('A')),
    _right = keyboard_check(ord('D')),
    _jump = keyboard_check(vk_space),
    _drop = keyboard_check_pressed(ord('F'));

// input data trans to joystickData
var _pressed = abs(_down - _up) || abs(_left - _right);
    _dir = point_direction(0, 0, _right - _left, _down - _up);


// joystick to motion
if (_pressed) {
    // AIMotion_typeMove(32, _dir);
    if (tictocSystem_readTictocStack(id) > 1 && tictocSystem_checkRhythm(2)) {
        AIMotion_typeWalk(_dir);
        tictocSystem_useTictocStack(id);
    }
}

if (_jump && zDepth_isOnFloor()) zDepth_set_zspd(-3);
if (_drop) {
    if (zDepth_get_floor() == 64) zDepth_set_floor(0);
    else zDepth_set_floor(64);
}


zDepth_update();
pressed = _pressed;
dir = _dir;
depth = -y;


#define player_destroy
/// player_destroy();

chess_destroy();