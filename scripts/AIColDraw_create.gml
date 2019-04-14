/// AIColDraw_create(par, type);

var _par = argument[0],
    _type = argument[1],
    _id = instance_create(0, 0, oColDraw);
    
with(_id) {
    AIColDraw_initialize();
    par = _par;
    type = _type;
}

return _id;
