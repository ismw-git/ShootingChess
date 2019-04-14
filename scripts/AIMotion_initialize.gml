#define AIMotion_initialize
/// AIMotion_initialize();
// AI's motion algorithm

AIMotionList = ds_list_create();

AIMotionList_curNum = 0;
AIMotionList_size = 0;

#define AIMotion_destroy
/// AIMotion_destroy();

ds_list_destroy(AIMotionList);

#define AIMotion_update
/// AIMotion_update();

// get input
dir = point_direction(x, y, player.x, player.y);


AIMotion_typeMove(8, dir);
// tictoc stack check
while(tictocSystem_readTictocStack(id) >= AIMotionList[| AIMotionList_curNum]) {
    tictocSystem_useTictocStack(id);


AIMotionList_curNum++;
AIMotionList_curNum += script_execute(AIMotionList[| AIMotionList_curNum]);

if (AIMotionList_curNum >= AIMotionList_size)
    AIMotionList_curNum = 0;
}
depth = -y;

#define AIMotion_add
/// AIMotion_add(time);

// add motion time
var _time = argument[0];

ds_list_add(AIMotionList, _time);

AIMotionList_size++;

#define AIMotion_read
/// AIMotion_read();