#define AIMotion_typeRush
/// AIMotion_typeRush(dir);

var _dir = argument[0];
phyMotion_add(2560, _dir);
if (zDepth_isOnFloor()) zDepth_set_zspd(-3);

#define AIMotion_addRush
/// AIMotion_addRush();

ds_list_add(AIMotionList, AIMotion_exeRush);

AIMotionList_size += 1;

#define AIMotion_exeRush
/// AIMotion_exeRush();

AIMotion_typeRush(dir);

return 1;
