/// chessCol_base();

var _damage = rpgValue_get_atk(),
    _dir = point_direction(x, y, other.x, other.y);

with(other) {
    rpgValue_hpDecrease(_damage);
    phyMotion_add(960, _dir);
}
