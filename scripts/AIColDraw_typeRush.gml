#define AIColDraw_typeRush
/// AIColDraw_typeRush();

var _px = par.x,
    _py = par.y,
    _dir = par.dir;


var _x1 = lengthdir_x(12, _dir+90),
    _y1 = lengthdir_y(12, _dir+90),
    _x2 = -_x1,
    _y2 = -_y1,
    _x3 = _x1 + lengthdir_x(64, _dir),
    _y3 = _y1 + lengthdir_y(64, _dir),
    _x4 = _x2 + lengthdir_x(64, _dir),
    _y4 = _y2 + lengthdir_y(64, _dir);
_x1 += _px; _y1 += _py;
_x2 += _px; _y2 += _py;
_x3 += _px; _y3 += _py;
_x4 += _px; _y4 += _py;

if (alpha < 0.4) alpha += 0.55/timeMax;


var _tex = sprite_get_texture(sprite3, 0);
draw_primitive_begin_texture(pr_trianglestrip, _tex);
draw_vertex_texture_colour(_x1, _y1, 0, 0, c_red, 0);
draw_vertex_texture_colour(_x2, _y2, 0, 1, c_red, 0);
draw_vertex_texture_colour(_x3, _y3, 1, 0, c_red, alpha);
draw_vertex_texture_colour(_x4, _y4, 1, 1, c_red, alpha);
draw_primitive_end();

#define AIColDraw_addRush
//AIColDraw_addRush();

ds_list_add(AIMotionList, AIColDraw_exeRush);

AIMotionList_size += 1;

#define AIColDraw_exeRush
/// AIColDraw_exeRush();

var _id = AIColDraw_create(id, AIColDraw_typeRush);
_id.timeMax = oTictocSystem.tictocTime * 2;

return 1;