#define windowSystem_initialize
/// windowSystem_initialize();

var _ww = 1280,
    _wh = 720,
    _gw = 320,
    _gh = 180;

display_width = display_get_width();    // pc display size
display_height = display_get_height();
window_width = _ww;                     // game window size
window_height = _wh;
gui_width = _gw;                        // game gui size
gui_height = _gh;

//application_surface_enable(false);

window_set_rectangle(
    display_width/2 - window_width/2,
    display_height/2 - window_height/2,
    window_width, window_height);

display_set_gui_size(_gw, _gh);

#define windowSystem_gui_draw
/// windowSystem_gui_draw();

viewSystem_surfExistsCheck();

guiPerWindow = window_width/gui_width;
draw_surface_ext(oViewSystem.surface_view, 0, 0, 1/guiPerWindow, 1/guiPerWindow, 0, c_white, 1);

if (instance_exists(oDebugSystem)) {
    var _debug = oDebugSystem;
    if (_debug.draw && surface_exists(_debug.surface_debug)) {
        draw_surface_ext(_debug.surface_debug, 0, 0, 1/guiPerWindow, 1/guiPerWindow, 0, c_white, 0.7);
    }
}
