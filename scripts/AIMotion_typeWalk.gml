#define AIMotion_typeWalk
/// AIMotion_typeWalk(dir);

var _dir = argument[0];
phyMotion_add(1280, _dir);
if (zDepth_isOnFloor()) zDepth_set_zspd(-3);

#define AIMotion_addWalk
/// AIMotion_addWalk();

ds_list_add(AIMotionList, AIMotion_exeWalk);

AIMotionList_size += 1;

#define AIMotion_exeWalk
/// AIMotion_exeWalk();

AIMotion_typeWalk(dir);

return 1;
