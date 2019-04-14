/// player_create(x, y);

var _x = argument[0],
    _y = argument[1],
    _id = instance_create(_x, _y, oChess);
    
with(_id) {
    player_initialize();
    scrStep = player_update;
    scrDraw = chess_draw;
    scrColWithChess = chessCol_base;
    scrDestroy = player_destroy;
    
    rpgValue_reset(15, 2);
}

return _id;
