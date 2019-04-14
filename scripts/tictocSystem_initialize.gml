#define tictocSystem_initialize
/// tictocSystem_initialize();


tictocUserList = ds_list_create();
tictocTime = 25;
tictocNumber = 0;
time = 0;
isTictoc = false;

#define tictocSystem_update
/// tictocSystem_update();

time++;
if (time == tictocTime) {
    tictocNumber++;
    time = 0;
    for(var i = 0; i < ds_list_size(tictocUserList); i++) 
        with(tictocUserList[| i]) tictocSystem_tictocStack++;
}

#define tictocSystem_addUser
/// tictocSystem_addUser(id);

var _id = argument[0],
    _sys = oTictocSystem;
    
ds_list_add(_sys.tictocUserList, _id);
with(_id) { tictocSystem_tictocStack = 0; }

#define tictocSystem_deleteUser
/// tictocSystem_deleteUser(id);

var _id = argument[0],
    _sys = oTictocSystem;

ds_list_delete(_sys.tictocUserList, ds_list_find_index(_sys.tictocUserList, _id));

#define tictocSystem_readTictocStack
/// tictocSystem_readTictocStack(id);

var _id = argument[0];

return _id.tictocSystem_tictocStack;

#define tictocSystem_checkRhythm
/// tictocSystem_checkRhythm(size);

var _size = argument[0],
    _return = false,
    _sys = oTictocSystem;

if (_sys.tictocNumber % _size == 0 && _sys.time == 0) _return = true;

return _return;

#define tictocSystem_useTictocStack
/// tictocSystem_useTictocStack(id);

var _id = argument[0];

_id.tictocSystem_tictocStack = 0;