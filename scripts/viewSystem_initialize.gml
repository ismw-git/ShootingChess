#define viewSystem_initialize
/// viewSystem_initialize();

window = oWindowSystem;
surface_view = surface_create(window.window_width, window.window_height);

view_enabled = true;
view_visible[0] = true;
view_wview = 320;
view_hview = 180;

view_surface_id[0] = surface_view;

#define viewSystem_update
/// viewSystem_update();

viewSystem_followInst_gradual(oPlayer);

#define viewSystem_followInst
/// viewSystem_followInst(id);

var _id = argument[0];

if (instance_exists(_id)) {
    view_xview[0] = _id.x-view_wview[0]/2;
    view_yview[0] = _id.y-view_hview[0]/2;
}

#define viewSystem_followInst_gradual
/// viewSystem_followInst_gradual(id);7

var _id = argument[0];

if (instance_exists(_id)) {
    view_xview[0] += (_id.x-view_wview[0]/2-view_xview[0])*0.1;
    view_yview[0] += (_id.y-view_hview[0]/2-view_yview[0])*0.1;
}

#define viewSystem_surfExistsCheck
/// viewSystem_surfExistsCheck();

// if viewSystem's surface_view is not exists reset surface
with(oViewSystem) if (!surface_exists(surface_view)) {
    surface_view = surface_create(window.window_width, window.window_height);
    view_surface_id[0] = surface_view;
}

#define script3
/// viewSystem_applySetting();