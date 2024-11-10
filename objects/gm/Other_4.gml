camera_destroy(view_camera[0]);
view_camera[0] = global.camera;

view_set_wport(0, SCREEN_WIDTH);
view_set_hport(0, SCREEN_HEIGHT);
view_set_camera(0, view_camera[0]);

if(!view_enabled)
{
    view_visible[0] = true;
    view_enabled = true;
}
