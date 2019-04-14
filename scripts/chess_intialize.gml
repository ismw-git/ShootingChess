#define chess_intialize
/// chess_intialize();

// physics set
var phy_fixture = phyCollision_create(1, 16, false);
myFixture = phyCollision_bind(phy_fixture);
phyCollision_destroy(phy_fixture);
zDepth_initialize();

// Tictoc user add
tictocSystem_addUser(id);

// rpg value init
rpgValue_initialize();

// draw inst init
drawInst_initialize();

#define chess_destroy
/// chess_destroy();

tictocSystem_deleteUser(id);

#define chess_update
/// chess_update();


AIMotion_update();

zDepth_update();

#define chess_draw
/// chess_draw();

drawInst_self();
rpgValue_drawValue();