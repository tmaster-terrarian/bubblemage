gpu_set_blendenable(false);

var scale = floor(window_get_height() / SCREEN_HEIGHT);
draw_surface_ext(
    application_surface,
    0 - (frac(self.camTargetX) * scale),
    0 - (frac(self.camTargetY) * scale),
    scale,
    scale,
    0,
    c_white,
    1
);

gpu_set_blendenable(true);
