#define AIColDraw_initialize
/// AIColDraw_initialize();

par = noone;
type = scrNull;
time = 0;
timeMax = 0;

alpha = 0;

#define AIColDraw_draw
/// AIColDraw_draw();

time++;
if (time >= timeMax) instance_destroy();

script_execute(type);