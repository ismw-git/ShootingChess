/// chess_create(x, y, type);
var _x = argument[0],
    _y = argument[1],
    _type,
    _id = instance_create(_x, _y, oChess);

with(_id) {
    chess_intialize();
    scrStep = chess_update;
    scrDraw = chess_draw;
    scrColWithChess = chessCol_base;
    scrDestroy = chess_destroy;
    
    // AIMotion set
    AIMotion_initialize();
    AIMotion_add(2);
    AIColDraw_addRush();
    AIMotion_add(2);
    AIMotion_addRush();
    AIMotion_add(8);
    AIColDraw_addRush();
    AIMotion_add(2);
    AIMotion_addRush();
    
    
    // input data
    dir = 0;
}

return _id;
