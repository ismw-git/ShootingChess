#define AIMotion_typeMove
/// AIMotion_typeMove(len, dir);

var _len = argument[0],
    _dir = argument[1];
    
phyMotion_add(_len, _dir);

#define AIMotion_addMove
/// AIMotion_addMove();

#define AIMotion_exeMove
/// AIMotion_exeMove();

AIMotion_typeMove(32, dir);