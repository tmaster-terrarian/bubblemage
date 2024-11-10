if(!instance_exists(obj_player))
{
    gpu_set_blendenable(false);

    var scale = floor(window_get_height() / SCREEN_HEIGHT);
    draw_surface_ext(application_surface, 0, 0, scale, scale, 0, c_white, 1);

    gpu_set_blendenable(true);
}
