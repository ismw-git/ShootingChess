#define rpgValue_initialize
/// rpgValue_initialize();

rpgVal_hpOrigin = 10;
rpgVal_hp = 10;
rpgVal_hpMax = 10;

rpgVal_atkOrigin = 1;
rpgVal_atk = 1;

#define rpgValue_reset
/// rpgValue_reset(hp, atk);

var _hp = argument[0],
    _atk = argument[1];


rpgVal_hpOrigin = _hp;
rpgVal_hp = _hp;
rpgVal_hpMax = _hp;

rpgVal_atkOrigin = _atk;
rpgVal_atk = _atk;

#define rpgValue_hpDecrease
/// rpgValue_hpDecrease(val);

var _decrease = argument[0];

rpgVal_hp -= _decrease;

if (rpgVal_hp <= 0) instance_destroy();

#define rpgValue_get_atk
/// rpgValue_get_atk();

return rpgVal_atk;