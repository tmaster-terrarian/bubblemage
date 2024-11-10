camera_destroy(view_camera[0]);
view_camera[0] = global.camera;

view_set_wport(0, (SCREEN_WIDTH + 1) * global.screenSize);
view_set_hport(0, (SCREEN_HEIGHT + 1) * global.screenSize);
view_set_camera(0, view_camera[0]);
camera_set_view_size(view_camera[0], SCREEN_WIDTH + 1, SCREEN_HEIGHT + 1);

if(!view_enabled)
{
    view_visible[0] = true;
    view_enabled = true;
}
