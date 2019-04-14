#define phyCollision_create
/// phyCollision_create(shape, size, sensor, density);

var _shape = argument[0],   // set physics shape type
    _size = argument[1],
    _sensor = argument[2],
    _density = 1,
    phy_fixture = physics_fixture_create();
if (argument_count > 3) _density = argument[3];

switch(_shape) {
case 0: // box
    var _wid = _size/2,
        _hei = _size/2;
    physics_fixture_set_box_shape(phy_fixture, _wid, _hei);
    break;
case 1: // circle
    var _dia = _size/2;
    physics_fixture_set_circle_shape(phy_fixture, _dia);
    break;
}
physics_fixture_set_density(phy_fixture, _density);
physics_fixture_set_restitution(phy_fixture, 1);
physics_fixture_set_friction(phy_fixture, 0);
physics_fixture_set_linear_damping(phy_fixture, 3.2);
physics_fixture_set_collision_group(phy_fixture, 0);
physics_fixture_set_sensor(phy_fixture, _sensor);

return phy_fixture;

#define phyCollision_destroy
/// phyCollision_destroy(fixture);

var phy_fixture = argument0;
physics_fixture_delete(phy_fixture);

#define phyCollision_bind
/// phyCollision_bind(fixture);

var phy_fixture = argument[0], _myFixture;
_myFixture = physics_fixture_bind(phy_fixture, id)
phy_fixed_rotation = true;
return _myFixture;

#define phyCollision_clear
/// phyCollision_clear(fixture);

var phy_fixture = argument[0];
return physics_remove_fixture(id, phy_fixture);